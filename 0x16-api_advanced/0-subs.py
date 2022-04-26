#!/usr/bin/python3
"""
queries the Reddit API
"""
import requests


def number_of_subscribers(subreddit):
    """queries the Reddit API and returns the number of subscribers
    for a given subreddit"""
    r = requests.get(
                    "https://www.reddit.com/r/{}/about.json".format(subreddit),
                    allow_redirects=False,
                    headers={'User-Agent': 'My User Agent 1.0'})
    if r.status_code == 200:
        data = r.json()
        return data["data"]["subscribers"]
    return 0

# Uncomment to Test function:
# import sys
# number_of_subscribers = __import__('0-subs').number_of_subscribers
# if len(sys.argv) < 2:
#     print("Please pass an argument for the subreddit to search.")
# else:
#     print("{:d}".format(number_of_subscribers(sys.argv[1])))
