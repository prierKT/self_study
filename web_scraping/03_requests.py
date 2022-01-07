import requests

res = requests.get("http://google.com")
print("응답코드: ", res.status_code) # 200이면 정상적으로 실행되었다는 뜻. 403이면 접근권한이 없다는 뜻

if res.status_code == requests.codes.ok: # 200과 똑같은 뜻
  print("정상입니다.")
else:
  print("문제가 생겼습니다. [에러코드: ", res.status_code, "]")
  
res.raise_for_status() # 문제가 생겼을 때 바로 에러를 발생시켜 프로그램 종료시킴. status_code가 200이 아닌 웹주소와 쌍으로 사용

print(len(res.text))
print(res.text)

with open("mygoogle.html", "w", encoding="utf8") as f:
  f.write(res.text)