import requests
from bs4 import BeautifulSoup

url = ("https://twitter.com/ftn_Ast")
pattern = "<p class=""TweetTextSize TweetTextSize--.*? js-tweet-text tweet-text"" lang="".*?"" data-aria-label-part="".*?"">(.*?)</p>"

get = requests.get(url)
s = BeatifulSoup(get.content, pattern)

print(s.prettify())
