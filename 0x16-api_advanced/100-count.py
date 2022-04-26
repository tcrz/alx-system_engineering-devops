#!/usr/bin/python3
"""
recursive function that queries the Reddit API and returns a list
containing the titles of the all hot posts recursively
"""
import requests


def count_words(subreddit, word_list, hot_list=[]):
    """sets base url and calls recursive function to return
    list of all titles"""
    word_dict = dict.fromkeys([x.casefold() for x in word_list], 0)
    url = "https://www.reddit.com/r/{}/hot.json?after=".format(subreddit)
    r = requests.get(url, allow_redirects=False,
                     headers={'User-Agent': 'My User Agent 1.0'})
    if r.status_code == 200:
        data = r.json()
        after = data["data"]["after"]
        for child in data["data"]["children"]:
            hot_list.append(child["data"]["title"])
        getpage(subreddit, url, after, hot_list)
        for key in word_dict:
            for titles in hot_list:
                for word in titles.split():
                    if key == word.casefold():
                        word_dict[key] += 1
        word_dict = sorted(word_dict.items(),
                           key=lambda word_dict: word_dict[1], reverse=True)
        for results in word_dict:
            if results[1] != 0:
                print(results[0] + ':', results[1])
    else:
        return


def getpage(subreddit, url, after, hot_list=[]):
    """recursively retrieves data on next page if available and
    stores data in a list"""
    next_page = url + after
    r = requests.get(next_page + "&limit=100", allow_redirects=False,
                     headers={'User-Agent': 'My User Agent 1.0'})
    data = r.json()
    next = data["data"]["after"]
    for child in data["data"]["children"]:
        hot_list.append(child["data"]["title"])
    if next is not None:
        getpage(subreddit, url, next, hot_list)
    return


# Uncomment to Test function:
# import sys
# if len(sys.argv) < 3:
#     print("Usage: {} <subreddit> <list of keywords>".format(sys.argv[0]))
#     print("Ex: {} programming 'python java javascript'".format(sys.argv[0]))
# else:
#     result = count_words(sys.argv[1], [x for x in sys.argv[2].split()])
