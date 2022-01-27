import os

learning_rates = [0.01, 0.05, 0.1]
n_exp = len(learning_rates)

for exp_cnt, exp_idx in enumerate(range(1, 1 + n_exp)):
  learning_rate = learning_rates[exp_cnt]
  command_template = 'python 29_Serial_Training.py' + ' -l ' + str(learning_rate) + ' -c ' + str(exp_idx)
  
  os.system(command=command_template)