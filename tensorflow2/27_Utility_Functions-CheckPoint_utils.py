"""
예)
- project directory # 프로젝트 경로
  - main.py # 메인 모듈
  - models.py # 모델이 복잡해지거나 여러 개의 모델을 테스트 하는 경우, main.py에 모델을 build 하는 것은 가독성이 덜어지기 때문에 models.py에 저장
  - utils
    - #### basic_utils.py
    - #### cp_utils.py
    - #### dataset_utils.py
    - #### learning_enc_setting.py
    - #### train_validation_test.py
    
  - train-YYYY_mm_dd # 모델 학습을 시켰을 때 저장되는 파일들
    - confusion_matrix
    - model
    - losses_accs.npz
    - losses_accs_visualization.png
    - test_result.txt
"""

from utils.learning_env_setting import dir_setting, continue_setting, get_classification_metrics
from utils.dataset_utils import load_processing_cifar10
from utils.basic_utils import resetter, training_repoter
from utils.train_validation_test import train, validation, test
from utils.cp_utils import save_metrics_model, metric_visualizer