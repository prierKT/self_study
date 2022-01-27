import os

import tensorflow as tf
from tensorflow.keras.optimizers import SGD
from tensorflow.keras.losses import SparseCategoricalCrossentropy

from utils.learning_env_setting import dir_setting, continue_setting, get_classification_metrics
from utils.dataset_utils import load_processing_mnist, load_processing_cifar10
from utils.train_validation_test import train, validation, test
from utils.cp_utils import save_metrics_model, metric_visualizer
from utils.basic_utils import resetter, training_repoter

from models import LeNet5
os.environ['TF_FORCE_GPU_ALLOW_GROWTH'] = 'true'


dir_name = '[LeNet5]_mnist'
CONTINUE_LEARNING = False

train_ratio = 0.7
train_batch_size, test_batch_size = 128, 128

epochs = 30
save_period = 2
learning_rate = 0.01

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