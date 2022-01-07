import requests
from bs4 import BeautifulSoup

url = "https://comic.naver.com/webtoon/list?titleId=675554"
res = requests.get(url)
res.raise_for_status()

soup = BeautifulSoup(res.text, "lxml")

# # 제목, 링크 정보
# cartoons = soup.find_all("td", attrs={"class":"title"})
# title = cartoons[0].a.get_text()
# link = cartoons[0].a["href"]
# print(title)
# print("https://comic.naver.com" + link)

# # 한 페이지의 제목, 링크 정보
# for cartoon in cartoons:
#   title = cartoon.a.get_text()
#   link = "https://comic.naver.com" + cartoon.a["href"]
#   print(title, link)

# 웹툰 가우스전자 평점을 받아와서 한 페이지의 총점과 평균 계산하기
scores = soup.find_all("div", attrs={"class":"rating_type"})
total_rates = 0

for score in scores:
  rate = score.find("strong").get_text()
  # print(rate)
  total_rates += float(rate)
print("총점: ", total_rates)
print("평균: ", total_rates / len(scores))