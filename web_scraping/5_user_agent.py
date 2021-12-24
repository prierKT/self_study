import requests

url = "http://google.com"

# 비정상적인 접근이 제한된 사이트에 user-agent 정보를 입력하여 정보를 받아오게 함
headers = {"User-Agent" : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"}
res = requests.get(url, headers=headers)
res.raise_for_status() # 문제가 생겼을 때 바로 에러를 발생시켜 프로그램 종료시킴. status_code가 200이 아닌 웹주소와 쌍으로 사용

with open("my_blog.html", "w", encoding="utf8") as f:
  f.write(res.text)