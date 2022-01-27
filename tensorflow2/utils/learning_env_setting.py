import os
import shutil
import argparse
import numpy as np
from termcolor import colored

import tensorflow as tf
from tensorflow.keras.metrics import Mean, SparseCategoricalAccuracy




def argparser(epochs, learning_rate, train_batch_size):
  parser = argparse.ArgumentParser(description='hyperparameters for training')

  parser.add_argument('-e', type=int, default=None, help='an integer for epochs')
  parser.add_argument('-l', type=float, default=None, help='floating point for learning rate')
  parser.add_argument('-b', type=int, default=None, help='an integer for batch size')
  parser.add_argument('-a', type=str, default=None, help='an string for activation function')
  parser.add_argument('-c', type=int, default=None, help='an integer for experiment count')

  args = parser.parse_args()
  
  if args.e == None:
    epochs = epochs
  else:
    epochs = args.e
  
  if args.l == None:
    learning_rate = learning_rate
  else:
    learning_rate = args.l

  if args.b == None:
    train_batch_size = train_batch_size
  else:
    train_batch_size = args.b
    
  if args.a == None:
    activation = 'relu'
  else:
    activation = args.a

  if args.c == None:
    exp_idx = 0
  else:
    exp_idx = args.c
  
  return exp_idx, epochs, learning_rate, train_batch_size, activation




def dir_setting(dir_name='result', CONTINUE_LEARNING=False):

  cp_path = os.path.join(os.getcwd(), dir_name)
  confusion_path = os.path.join(cp_path, 'confusion_matrix')
  model_path = os.path.join(cp_path, 'model')

  if CONTINUE_LEARNING == False and os.path.isdir(cp_path):
    shutil.rmtree(cp_path)
    
  if not os.path.isdir(cp_path):
    os.makedirs(cp_path, exist_ok=True)
    os.makedirs(confusion_path, exist_ok=True)
    os.makedirs(model_path, exist_ok=True)

  path_dict = {
              'cp_path':cp_path,
              'confusion_path':confusion_path,
              'model_path':model_path}
  
  return path_dict



def get_classification_metrics():
  train_loss = Mean()
  train_acc = SparseCategoricalAccuracy()
  
  validation_loss = Mean()
  validation_acc = SparseCategoricalAccuracy()
  
  test_loss = Mean()
  test_acc = SparseCategoricalAccuracy()
  
  metric_object = dict()
  metric_object['train_loss'] = train_loss
  metric_object['train_acc'] = train_acc
  metric_object['validation_loss'] = validation_loss
  metric_object['validation_acc'] = validation_acc
  metric_object['test_loss'] = test_loss
  metric_object['test_acc'] = test_acc
  
  return metric_object



def continue_setting(CONTINUE_LEARNING, path_dict, model=None):
  if CONTINUE_LEARNING == True and len(os.listdir(path_dict['model_path'])) == 0:
    CONTINUE_LEARNING = False
    print(colored('CONTINUE LEARNING flag has been converted to FALSE', 'cyan'))

  if CONTINUE_LEARNING == True:
    epoch_list = os.listdir(path_dict['model_path'])
    epoch_list = [int(epoch.split('_')[1]) for epoch in epoch_list]
    epoch_list.sort()
    
    last_epoch = epoch_list[-1]
    model_path = path_dict['model_path'] + '/epoch' + str(last_epoch)
    model = tf.keras.models.load_model(model_path)
    
    losses_accs_path = path_dict['cp_path']
    losses_accs_np = np.load(losses_accs_path + '/losses_accs.npz')
    losses_accs = dict()
    for key, value in losses_accs_np.items():
      losses_accs[key] = list(value)
    
    start_epoch = last_epoch + 1
    

  else:
    model = model
    start_epoch = 0
    losses_accs = {
                  'train_losses':[], 'train_accs':[],
                  'validation_losses':[], 'validation_accs':[]}

  return model, losses_accs, start_epoch