"""
* 여러 개의 모델을 학습시키는 방법

1. parallel (동시에 학습)
  - 터미널을 학습시킬 모델 수 만큼 열어서 학습
  - 어느 정도 규모가 큰 모델을 동시에 학습시킬 경우, GPU의 메모리가 부족함

2. serial (순차적으로 학습)
  - argparse를 사용한 hyperparameter handling 함수를 만들어 활용
  - caller 파일을 만들어 command를 생성하여 순차적으로 학습
"""

import os

import tensorflow as tf

from tensorflow.keras.optimizers import SGD
from tensorflow.keras.losses import SparseCategoricalCrossentropy

from utils.learning_env_setting import argparser, dir_setting, continue_setting, get_classification_metrics
from utils.dataset_utils import load_processing_mnist, load_processing_cifar10
from utils.train_validation_test import train, validation, test
from utils.cp_utils import save_metrics_model, metric_visualizer
from utils.basic_utils import resetter, training_repoter

from models import LeNet1, LeNet5
os.environ['TF_FORCE_GPU_ALLOW_GROWTH'] = 'true'


dir_name = '[LeNet5]_mnist'
CONTINUE_LEARNING = False

train_ratio = 0.7
train_batch_size, test_batch_size = 32, 128

epochs = 20
save_period = 2
learning_rate = 0.001

exp_idx, epochs, learning_rate, train_batch_size, activation = argparser(
                                                                        epochs=epochs,
                                                                        learning_rate=learning_rate,
                                                                        train_batch_size=train_batch_size)

dir_name = '[LeNet5]_mnist_' + str(exp_idx)
model = LeNet5()
optimizer = SGD(learning_rate=learning_rate)

loss_object = SparseCategoricalCrossentropy()
path_dict = dir_setting(
                        dir_name=dir_name,
                        CONTINUE_LEARNING=CONTINUE_LEARNING)
model, losses_accs, start_epoch = continue_setting(
                                                  CONTINUE_LEARNING=CONTINUE_LEARNING,
                                                  path_dict=path_dict,
                                                  model=model)
train_ds, validation_ds, test_ds = load_processing_mnist(
                                                        train_ratio=train_ratio,
                                                        train_batch_size=train_batch_size,
                                                        test_batch_size=test_batch_size)
metric_objects = get_classification_metrics()

for epoch in range(start_epoch, epochs):
  train(train_ds=train_ds, model=model, loss_object=loss_object, optimizer=optimizer, metric_objects=metric_objects)
  validation(validation_ds=validation_ds, model=model, loss_object=loss_object, metric_objects=metric_objects)
  
  training_repoter(epoch=epoch, losses_accs=losses_accs, metric_objects=metric_objects)
  save_metrics_model(epoch=epoch, model=model, losses_accs=losses_accs, path_dict=path_dict, save_period=save_period)
  
  metric_visualizer(losses_accs=losses_accs, save_path=path_dict['cp_path'])
  resetter(metric_objects=metric_objects)

test(test_ds=test_ds, model=model, loss_object=loss_object, metric_objects=metric_objects, path_dict=path_dict)