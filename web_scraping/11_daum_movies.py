import requests
from bs4 import BeautifulSoup

headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36"}

# 2016년부터 2020년까지의 영화 이지미 스크래핑
for year in range(2016, 2021):
  url = "https://search.daum.net/search?w=tot&q={}%EB%85%84%EC%98%81%ED%99%94%EC%88%9C%EC%9C%84&DA=MOR&rtmaxcoll=MOR".format(year)
  res = requests.get(url, headers=headers)
  res.raise_for_status()
  soup = BeautifulSoup(res.text, "lxml")
  images = soup.find_all("img", attrs={"class":"thumb_img"})
  
  # 상위 영화 30개의 이미지
  for idx, image in enumerate(images):
    image_url = image["src"]
    image_res = requests.get(image_url)
    image_res.raise_for_status()
    
    with open("movie_{}_{}.jpg".format(year, idx + 1), "wb") as f: # 이미지는 텍스트가 아니기 때문에 'wb'
      f.write(image_res.content)
    
    if idx >= 4: # 상위 5개의 이미지만 가져오기
      break
