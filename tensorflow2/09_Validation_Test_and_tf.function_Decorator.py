import time
import numpy as np
import matplotlib.pyplot as plt
plt.style.use('seaborn-white')
from termcolor import colored

import tensorflow as tf
from tensorflow.keras.models import Model, Sequential
from tensorflow.keras.layers import Dense, Layer
from tensorflow.keras.losses import SparseCategoricalCrossentropy
from tensorflow.keras.metrics import SparseCategoricalAccuracy, Mean
from tensorflow.keras.optimizers import SGD


n_train, n_validation, n_test = 1000, 300, 300

train_x = np.random.normal(0, 1, size=(n_train, 1)).astype(np.float32)
train_x_noise = train_x + 0.2 * np.random.normal(0, 1, size=(n_train, 1))
train_y = (train_x_noise > 0).astype(np.int32)

validation_x = np.random.normal(0, 1, size=(n_validation, 1)).astype(np.float32)
validation_x_noise = validation_x + 0.2 * np.random.normal(0, 1, size=(n_validation, 1))
validation_y = (validation_x_noise > 0).astype(np.int32)

test_x = np.random.normal(0, 1, size=(n_test, 1)).astype(np.float32)
test_x_noise = test_x + 0.2 * np.random.normal(0, 1, size=(n_test, 1))
test_y = (test_x_noise > 0).astype(np.int32)


train_ds = tf.data.Dataset.from_tensor_slices((train_x, train_y))
train_ds = train_ds.shuffle(n_train).batch(8)

validation_ds = tf.data.Dataset.from_tensor_slices((validation_x, validation_y))
validation_ds = validation_ds.batch(n_validation)

test_ds = tf.data.Dataset.from_tensor_slices((test_x, test_y))
test_ds = test_ds.batch(n_test)


class Classifier(tf.keras.Model):
  def __init__(self):
    super(Classifier, self).__init__()
    
    self.dense = Dense(units=2, activation='softmax')
    
  def call(self, x):
    
    predictions = self.dense(x)
    return predictions


model = Classifier()

loss_object = SparseCategoricalCrossentropy()
optimizer = SGD(learning_rate=1)

train_loss = Mean()
train_acc = SparseCategoricalAccuracy()

validation_loss = Mean()
validation_acc = SparseCategoricalAccuracy()

test_loss = Mean()
test_acc = SparseCategoricalAccuracy()


EPOCHS = 10


train_losses, validation_losses = [], []
train_accs, validation_accs = [], []

start = time.time()
for epoch in range(EPOCHS):
  for x, y in train_ds:
    with tf.GradientTape() as tape:
      predictions = model(x)
      loss = loss_object(y, predictions)
      
    gradients = tape.gradient(loss, model.trainable_variables)
    optimizer.apply_gradients(zip(gradients, model.trainable_variables))
    
    train_loss(loss)
    train_acc(y, predictions)
  
  for x, y, in validation_ds:
    predictions = model(x)
    loss = loss_object(y, predictions)
    
    validation_loss(loss)
    validation_acc(y, predictions)
  
  print(colored('Epoch: ', 'red', 'on_white'), epoch + 1)
  
  template = 'Train Loss: {:.4f}\t Train Accuracy {:.2f}%\n Validation Loss: {:.4f}\t Validation Accuracy: {:.2f}%\n'
  print(template.format(train_loss.result(), train_acc.result() * 100,
                        validation_loss.result(), validation_acc.result() * 100))
  
  train_losses.append(train_loss.result())
  train_accs.append(train_acc.result() * 100)
  validation_losses.append(validation_loss.result())
  validation_accs.append(validation_acc.result() * 100)
  
  train_loss.reset_states()
  train_acc.reset_states()
  validation_loss.reset_states()
  validation_acc.reset_states()


for x, y in test_ds:
  predictions = model(x)
  loss = loss_object(y, predictions)
  
  test_loss(loss)
  test_acc(y, predictions)
  
print(colored('Final Result: ', 'cyan', 'on_white'))

template = 'Test Loss: {:.4f}\t Test Accuracy: {:.2f}%'
print(template.format(test_loss.result(), test_acc.result() * 100))
print("\ntime :", time.time() - start)

@tf.function
def train_step(x, y):
  global model, loss_object
  global train_loss, train_acc
  
  with tf.GradientTape() as tape:
    predictions = model(x)
    loss = loss_object(y, predictions)
    
  gradients = tape.gradient(loss, model.trainable_variables)
  optimizer.apply_gradients(zip(gradients, model.trainable_variables))
  
  train_loss(loss)
  train_acc(y, predictions)


@tf.function
def validation():
  global validation_ds, model, loss_object
  global validation_loss, validation_acc
  
  for x, y, in validation_ds:
    predictions = model(x)
    loss = loss_object(y, predictions)
    
    validation_loss(loss)
    validation_acc(y, predictions)


def train_reporter():
  global epoch
  global train_loss, train_acc
  global validation_loss, validation_acc
  
  print(colored('Epoch: ', 'red', 'on_white'), epoch + 1)
  
  template = 'Train Loss: {:.4f}\t Train Accuracy {:.2f}%\n Validation Loss: {:.4f}\t Validation Accuracy: {:.2f}%\n'
  print(template.format(train_loss.result(), train_acc.result() * 100,
                        validation_loss.result(), validation_acc.result() * 100))


def metric_resetter():
  global train_loss, train_acc
  global validation_loss, validation_acc
  
  train_losses.append(train_loss.result())
  train_accs.append(train_acc.result() * 100)
  validation_losses.append(validation_loss.result())
  validation_accs.append(validation_acc.result() * 100)
  
  train_loss.reset_states()
  train_acc.reset_states()
  validation_loss.reset_states()
  validation_acc.reset_states()


def final_visualization():
  global train_losses, validation_losses
  global train_accs, validation_accs
  
  fig, axes = plt.subplots(2, 1, figsize=(15, 10))
  axes[0].plot(train_losses, label='Train Loss')
  axes[0].plot(validation_losses, label='Validation Loss')
  axes[1].plot(train_accs, label='Train Accuracy')
  axes[1].plot(validation_accs, label='Validation Accuracy')
  
  axes[0].tick_params(labelsize=10)
  axes[0].tick_params(labelsize=10)
  
  axes[0].set_ylabel('Binary Corss Entropy', fontsize=10)
  axes[1].set_ylabel('Accuracy', fontsize=10)
  axes[1].set_xlabel('Epoch', fontsize=10)
  
  axes[0].legend(loc='best', fontsize=10)
  axes[1].legend(loc='best', fontsize=10)
  
  plt.savefig("train_loss_acc.png", dpi=100)

start = time.time()
for epoch in range(EPOCHS):
  for x, y in train_ds:
    train_step(x, y)
  validation()
  train_reporter()
  metric_resetter()


for x, y in test_ds:
  predictions = model(x)
  loss = loss_object(y, predictions)
  
  test_loss(loss)
  test_acc(y, predictions)

print(colored('Final Result: ', 'cyan', 'on_white'))

template = 'Test Loss: {:.4f}\t Test Accuracy: {:.2f}%'
print(template.format(test_loss.result(), test_acc.result() * 100))
print("\ntime :", time.time() - start)

"""
tf.function을 사용했을 때와 사용하지 않았을 때를 비교한 결과
코드실행의 속도 차이가 굉장히 많이 나는 것을 확인할 수 있다.
"""

final_visualization()