import requests
import re
from bs4 import BeautifulSoup

# 쿠팡 - 게이밍 노트북 검색 정보 받아오기
url = "https://www.coupang.com/np/search?q=%EA%B2%8C%EC%9D%B4%EB%B0%8D%EB%85%B8%ED%8A%B8%EB%B6%81&channel=user&component=&eventCategory=SRP&trcid=&traid=&sorter=scoreDesc&minPrice=&maxPrice=&priceRange=&filterType=&listSize=36&filter=&isPriceRange=false&brand=&offerCondition=&rating=0&page=1&rocketAll=false&searchIndexingToken=&backgroundColor="
headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36"}
res = requests.get(url, headers=headers)
res.raise_for_status()

soup = BeautifulSoup(res.text, "lxml")
items = soup.find_all("li", attrs={"class":re.compile("^search-product")})
# print(items[0].find("div", attrs={"class":"name"}).get_text())

for item in items:
  name = item.find("div", attrs={"class":"name"}).get_text()
  price = item.find("strong", attrs={"class":"price-value"}).get_text()
  
  # 평점이 있는 상품만 출력
  rate = item.find("em", attrs={"class":"rating"})
  if rate:
    rate = rate.get_text()
  else:
    print("  <평점 없는 상품 제외>  ")
    continue
    
  # 리뷰가 있는 상품만 출력
  rate_cnt = item.find("span", attrs={"class":"rating-total-count"})
  if rate_cnt:
    rate_cnt = rate_cnt.get_text()
    rate_cnt = rate_cnt[1:-1]
  else:
    print("  <리뷰 없는 상품 제외>  ")
    continue
  
  if float(rate) >= 4.0 and int(rate_cnt) >= 50:
    print(name, price, rate, rate_cnt)
