import requests
from bs4 import BeautifulSoup

url = "https://play.google.com/store/movies/top/category/MOVIE?hl=en_US&gl=US"
headers = {
  "User-Agent" : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36",
  "Accept-Language" : "ko-KR,ko" # 한국어로 된 페이지 불러오기 : 내가 보는 페이지와 프로그램이 읽는 페이지의 버전이 다를 수 있다.
  }
res = requests.get(url, headers=headers)
res.raise_for_status()

soup = BeautifulSoup(res.text, "lxml")

movies = soup.find_all("div", attrs={"class":"ImZGtf mpg5gc"})
# print(len(movies))

# with open("movies.html", "w", encoding="utf8") as f:
#   # f.write(res.text)
#   f.write(soup.prettify()) # html문서를 예쁘게 출력

for movie in movies:
  title = movie.find("div", attrs={"class":"WsMG1c nnK0zc"}).get_text()
  print(title)