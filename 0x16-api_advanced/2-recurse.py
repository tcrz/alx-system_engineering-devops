#!/usr/bin/python3
"""
queries the Reddit API and prints the titles of the
all hot posts recursively
"""
import requests


def recurse(subreddit, hot_list=[]):
    """queries the Reddit API and prints the titles of the
all hot posts recursively"""
    url = "https://www.reddit.com/r/{}/hot.json?after=".format(subreddit)
    r = requests.get(url, allow_redirects=False,
                     headers={'User-Agent': 'My User Agent 1.0'})
    if r.status_code == 200:
        data = r.json()
        after = data["data"]["after"]
        getpage(subreddit, url, after, hot_list)
        return hot_list
    else:
        return None


def getpage(subreddit, url, after, hot_list=[]):
    next_page = url + after
    r = requests.get(next_page + "&limit=100", allow_redirects=False,
                     headers={'User-Agent': 'My User Agent 1.0'})
    if r.status_code != 200:
        return
    data = r.json()
    next = data["data"]["after"]
    for child in data["data"]["children"]:
        hot_list.append(child["data"]["title"])
    # print(len(hot_list), next)
    if next is not None:
        getpage(subreddit, url, next, hot_list)
    return

# Uncomment to Test function:
# import sys
# if len(sys.argv) < 2:
#     print("Please pass an argument for the subreddit to search.")
# else:
#     result = recurse(sys.argv[1])
#     if result is not None:
#         print(len(result))
#     else:
#         print("None")
