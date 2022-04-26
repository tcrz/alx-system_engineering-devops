#!/usr/bin/python3
"""
queries the Reddit API and prints the titles of the
first 10 hot posts
"""
import requests


def top_ten(subreddit):
    """queries the Reddit API and prints the titles of the
    first 10 hot posts"""
    r = requests.get(
                    "https://www.reddit.com/r/{}/hot.json?limit=10"
                    .format(subreddit),
                    allow_redirects=False,
                    headers={'User-Agent': 'My User Agent 1.0'})
    if r.status_code == 200:
        data = r.json()
        for child in data["data"]["children"]:
            print(child["data"]["title"])
    else:
        print("None")


# Uncomment to Test function:
# import sys
# if len(sys.argv) < 2:
#     print("Please pass an argument for the subreddit to search.")
# else:
#     top_ten(sys.argv[1])
