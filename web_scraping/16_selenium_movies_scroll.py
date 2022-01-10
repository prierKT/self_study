import time
import requests
from bs4 import BeautifulSoup
from selenium import webdriver

browser = webdriver.Chrome("web_scraping\chromedriver.exe")
browser.maximize_window()

# 페이지 이동
url = "https://play.google.com/store/movies/top/category/MOVIE?hl=en_US&gl=US"
browser.get(url)

# 스크롤 내리기
# 지정한 위치로 스크롤 내리기
# 모니터(해상도) 높이인 1080 위치로 스크롤 내리기
# browser.execute_script("window.scrollTo(0, 1080)") # 1920 * 1080
# browser.execute_script("window.scrollTo(0, 2080)")

# 화면 가장 아래로 스크롤 내리기
browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")

interval = 2 # 스크롤 내린 후 기다리는 시간

# 현재 문서 높이를 가져와서 저장
prev_height = browser.execute_script("return document.body.scrollHeight")

# 반복 수행
while True:
  # 스크롤을 화면 맨 아래로 내림
  browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  
  # 페이지 로딩 대기
  time.sleep(interval)
  
  # 현재 문서 높이를 가져와서 저장
  curr_height = browser.execute_script("return document.body.scrollHeight")
  
  if curr_height == prev_height:
    break
  
  prev_height = curr_height
print("스크롤 완료\n")


soup = BeautifulSoup(browser.page_source, "lxml")

# movies = soup.find_all("div", attrs={"class":["ImZGtf mpg5gc", "Vpfmgd"]})
movies = soup.find_all("div", attrs={"class":"Vpfmgd"})
print("영화 수:" ,len(movies))

for movie in movies:
  title = movie.find("div", attrs={"class":"WsMG1c nnK0zc"}).get_text()
  # print(title)
  
  # 할인 전 가격
  original_price = movie.find("span", attrs={"class":"SUZt4c djCuy"})
  if original_price:
    original_price = original_price.get_text()
  else:
    # print(title, "<할인되지 않은 영화 제외>")
    continue
  
  # 할인 된 가격
  price = movie.find("span", attrs={"class":"VfPpfd ZdBevf i5DZme"}).get_text()
  
  # 링크
  link = movie.find("a", attrs={"class":"JC71ub"})["href"]
  # 올바른 링크 : https://play.google.com + link
  
  print(f"제목: {title}")
  print(f"할인 전 금액: {original_price}")
  print(f"할인 후 금액: {price}")
  print("링크: ", "https://play.google.com" + link)
  print("-" * 50)
  
browser.quit()