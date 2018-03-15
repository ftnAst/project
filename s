import requests
from bs4 import BeautifulSoup

url = ("https://twitter.com/ftn_Ast")
pattern = "<p class=""TweetTextSize TweetTextSize--.*? js-tweet-text tweet-text"" lang="".*?"" data-aria-label-part="".*?"">(.*?)</p>"

get = requests.get(url)
s = BeatifulSoup(get.content, pattern)

print(s.prettify())
https://api.twitter.com/1.1/statuses/user_timeline.json?ftn_Ast=twitterapi&count=2


https://twittercommunity.com/t/bad-authentication-data/62283
