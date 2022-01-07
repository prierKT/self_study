import time
from typing import final
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

browser = webdriver.Chrome("web_scraping\chromedriver.exe")
browser.maximize_window() # 전체화면으로 띄움

url = "https://flight.naver.com"
browser.get(url)
waiting = 0.5
time.sleep(waiting)

# 목적지 선택
browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[4]/div/div/div[2]/div[1]/button[2]').click() # 목적지 버튼
time.sleep(waiting)
browser.find_elements_by_class_name('autocomplete_Collapse__tP3pM')[1].click() # 일본
time.sleep(waiting)
browser.find_elements_by_class_name('autocomplete_Airport__3_dRP')[1].click() # 나리타 국제 공항
time.sleep(waiting)

# 날짜 선택
browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[4]/div/div/div[2]/div[2]/button[1]').click() # 가는 날 버튼
time.sleep(waiting)
browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[10]/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr[5]/td[6]/button').click() # 가는 날 날짜
time.sleep(waiting)
browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[10]/div[2]/div[1]/div[2]/div/div[3]/table/tbody/tr[1]/td[4]/button').click() # 오는 날 날짜
time.sleep(waiting)
browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[4]/div/div/div[2]/div[3]/button[1]').click() # 성인 1명 
time.sleep(waiting)
browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[4]/div/div/div[3]/div/div[2]/button[1]').click() # 일반석
time.sleep(waiting)
# browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[4]/div/div/div[2]/div[3]/button[2]').click() # 직항

# 항공권 검색
browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[4]/div/div/button').click()

# 결과 기다리기
try:
  # 페이지 로딩시 원하는 element가 나올 때까지 기다렸다가 수행
  elem = WebDriverWait(browser, 30).until(EC.presence_of_element_located((By.XPATH, '//*[@id="__next"]/div/div[1]/div[4]/div/div[3]/div[1]/div/div[1]')))
  # 결과 출력
  print(elem.text)
  elem = browser.find_element_by_xpath('//*[@id="__next"]/div/div[1]/div[4]/div/div[3]/div[1]/div/div[2]/div/div')
  print(elem.text)
finally:
  browser.quit()