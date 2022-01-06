import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys # Keys.ENTER 을 사용하기 위해 불러옴

# pip install selenium
# 본인의 chrome version에 맞는 chromedriver를 다운로드 (97.0.4692.71)

browser = webdriver.Chrome("web_scraping\\chromedriver.exe") # "./chromedriver.exe" 같은 경로상에 있으면 적지 않아도 된다.

browser.get("http://www.naver.com")
elem = browser.find_element_by_class_name("link_login") # class name으로 element 검색
print(elem)
elem.click() # element를 클릭
browser.back() # 이전 페이지
browser.forward() # 앞 페이지
browser.refresh() # 새로고침

elem = browser.find_element_by_id("query") # id로 element 검색
elem.send_keys("나도코딩") # 문자를 입력
elem.send_keys(Keys.ENTER) # Enter key 입력

elem = browser.find_elements_by_tag_name("a") # a tag를 모두 검색
for e in elem:
  print(e.get_attribute("href")) # href 속성을 가져오기

##########################################################################################

browser.get("http://daum.net")
elem = browser.find_element_by_name("q") # name으로 element 검색
elem.send_keys("나도코딩")
elem = browser.find_element_by_xpath('//*[@id="daumSearch"]/fieldset/div/div/button[2]') # xpath로 element 검색
elem.click()

# browser.close() # 현제 tab만을 종료
browser.quit() # browser 종료

##########################################################################################

# 네이버 로그인하기
browser.get("http://www.naver.com")
elem = browser.find_element_by_class_name("link_login")
elem.click()

browser.find_element_by_id("id").send_keys("naver_id")
browser.find_element_by_id("pw").send_keys("password")
browser.find_element_by_id("log.login").click()

time.sleep(3)

browser.find_element_by_id("id").clear() # 검색한 element의 text를 삭제
browser.find_element_by_id("id").send_keys("my_id")

# print(browser.page_source) # html 정보 출력

browser.quit()