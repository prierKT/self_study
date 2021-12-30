import requests
import re
from bs4 import BeautifulSoup

headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36"}

# 여러 페이지에서 원하는 결과 필터링 후 받아오기
for i in range(1, 6):
  # print("페이지: ", i)
  url = f'https://www.coupang.com/np/search?q=%EA%B2%8C%EC%9D%B4%EB%B0%8D+%EB%85%B8%ED%8A%B8%EB%B6%81&channel=user&component=&eventCategory=SRP&trcid=&traid=&sorter=scoreDesc&minPrice=&maxPrice=&priceRange=&filterType=&listSize=36&filter=&isPriceRange=false&brand=&offerCondition=&rating=0&page={i}&rocketAll=false&searchIndexingToken=1=6&backgroundColor='
  res = requests.get(url, headers=headers)
  res.raise_for_status()

  soup = BeautifulSoup(res.text, "lxml")
  items = soup.find_all("li", attrs={"class":re.compile("^search-product")})
  # print(items[0].find("div", attrs={"class":"name"}).get_text())

  for item in items:
    name = item.find("div", attrs={"class":"name"}).get_text()
    
    price = item.find("strong", attrs={"class":"price-value"})
    if price:
      price = price.get_text()
    else:
      # print("  <가격 정보 없는 상품 제외>  ")
      continue
    
    rate = item.find("em", attrs={"class":"rating"})
    if rate:
      rate = rate.get_text()
    else:
      # print("  <평점 없는 상품 제외>  ")
      continue
      
    rate_cnt = item.find("span", attrs={"class":"rating-total-count"})
    if rate_cnt:
      rate_cnt = rate_cnt.get_text()[1:-1]
    else:
      # print("  <리뷰 없는 상품 제외>  ")
      continue
    
    link = item.find("a", attrs={"class":"search-product-link"})["href"]
    
    if float(rate) >= 4.5 and int(rate_cnt) >= 100:
      # print(name, price, rate, rate_cnt)
      print(f"제품명: {name}")
      print(f"가격: {price}")
      print(f"평점: {rate}")
      print(f"리뷰 수: {rate_cnt}")
      print("링크: {}".format("https://www.coupang.com" + link))
      print("-"*100)