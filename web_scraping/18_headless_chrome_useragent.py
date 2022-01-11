from selenium import webdriver

options = webdriver.ChromeOptions()
options.headless = True
options.add_argument("window-size=1920x1080")
options.add_argument("User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36")

browser = webdriver.Chrome("web_scraping\chromedriver.exe", options=options)
browser.maximize_window()

url = "https://www.whatismybrowser.com/detect/what-is-my-user-agent"
browser.get(url)

"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36"
detected_value = browser.find_element_by_id("detected_value")
print(detected_value.text)

browser.quit()

"""headless chrome을 사용할 때, user-agent도 headless chrome으로 뜨기 때문에 접근이 제한될 수 있다.
따라서 user-agent 값을 따로 설정해 줄 필요가 있을 수 있다."""