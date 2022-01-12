import re
import requests
from bs4 import BeautifulSoup

"""매일 날씨, 헤드라인 뉴스, IT 뉴스, 기본 영어회화로 하루 일과를 시작하는데,
일일이 각 페이지에 접속하여 확인하는 것보다 시간을 절약하기 위해서 원하는 정보를 받아오는 프로그램 만들기"""

def create_soup(url):
  # soup을 만드는 함수
  headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36"}
  res = requests.get(url, headers=headers)
  res.raise_for_status()
  soup = BeautifulSoup(res.text, "lxml")
  
  return soup

def scrape_weather():
  # 오늘 날씨정보 가져오는 함수
  url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%8B%A0%ED%83%84%EC%A7%84+%EB%82%A0%EC%94%A8"
  soup = create_soup(url)

  comparison = soup.find("p", attrs={"class":"summary"}).get_text().strip().split(" ")
  temperature = soup.find("div", attrs={"class":"temperature_text"}).get_text().strip().replace(" 온도", " ")
  lowest = soup.find("span", attrs={"class":"lowest"}).get_text().replace("기온", " ")
  highest = soup.find("span", attrs={"class":"highest"}).get_text().replace("기온", " ")
  morn_rain_prob = soup.find("div", attrs={"class":"cell_weather"}).find_all("span", attrs={"class":"rainfall"})[0].get_text()
  aftern_rain_prob = soup.find("div", attrs={"class":"cell_weather"}).find_all("span", attrs={"class":"rainfall"})[1].get_text()
  find_dust = soup.find_all("li", attrs={"class":"item_today level1"})[0].find("span", attrs={"class":"txt"}).get_text()
  ultra_find_dust = soup.find_all("li", attrs={"class":"item_today level1"})[1].find("span", attrs={"class":"txt"}).get_text()

  print("[오늘의 날씨]")
  print(comparison[4] + ",", comparison[0], comparison[1], comparison[2])
  print(temperature + ",", "(", lowest, "/", highest, ")")
  print("오전 강수확률", morn_rain_prob, "/", "오후 강수확률", aftern_rain_prob)
  print("미세먼지", find_dust, "/", "초미세먼지", ultra_find_dust)
  print()


def scrape_headline_news():
  # 네이버 헤드라인 뉴스 3개 가져오는 함수
  url = "https://news.naver.com"
  soup = create_soup(url)
  
  print("[헤드라인 뉴스]")

  headlines = soup.find_all("div", attrs={"class":"hdline_article_tit"}, limit=3)
  for index, headline in enumerate(headlines):
    title = headline.find("a").get_text().strip()
    link = headline.find("a")["href"]
    
    print(str(index + 1) + ".", title)
    print("  (링크 :", "https://news.naver.com" + link + ")")
    print()


def scrape_it_news():
  # 네이버 IT 뉴스 5개 가져오는 함수
  url = "https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid1=105&sid2=230"
  soup = create_soup(url)

  print("[IT 뉴스]")

  news_list = soup.find("ul", attrs={"class":"type06_headline"})
  article_list = news_list.find_all("li", limit=5)
  for index, article in enumerate(article_list):
    a_idx = 0
    img = article.find("img")
    if img:
      a_idx = 1
      
    title = article.find_all("a")[a_idx].get_text().strip()
    link = article.find_all("a")[a_idx]["href"]
    
    print(str(index + 1) + ".", title)
    print("  (링크 :", link + ")")
    print()

# 해커스 매일 기본 영어회화

def scrape_heckers_english():
  url = "https://www.hackers.co.kr/?c=s_eng/eng_contents/I_others_english&keywd=haceng_submain_lnb_eng_I_others_english&logger_kw=haceng_submain_lnb_eng_I_others_english"
  soup = create_soup(url)

  print("[오늘의 영어 회화]")
  print()

  sentences = soup.find_all("div", attrs={"id":re.compile("^conv_kor_t")})
  
  print("(영어 지문)")
  for sentence in sentences[len(sentences)//2:]:
    print(sentence.get_text().strip())
  
  print()
  print("(한글 지문)")
  for sentence in sentences[0:len(sentences)//2]:
    print(sentence.get_text().strip())

if __name__ == "__main__":
  scrape_weather() # 날씨 정보
  scrape_headline_news() # 네이버 헤드라인 뉴스
  scrape_it_news() # 네이버 it 뉴스
  scrape_heckers_english() # 해커스 매일영어회화