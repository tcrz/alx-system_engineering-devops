#!/usr/bin/python3
"""gathers data from an API and exports it to CSV file"""


if __name__ == "__main__":
    import requests
    import sys
    import csv

    user_req = requests.get("https://jsonplaceholder.typicode.com/users/{}".
                            format(sys.argv[1]))
    user_name = user_req.json().get("name")
    tasks_req = requests.get("https://jsonplaceholder.typicode.com/todos")
    total_tasks = 0
    cmp_tasks_desc = ""
    with open("2.csv", 'w', encoding='utf=8') as file:
        write = csv.writer(file, delimiter=",", quoting=csv.QUOTE_ALL)
        for each in tasks_req.json():
            if each["userId"] == int(sys.argv[1]):
                write.writerow([each["userId"], user_name, each["completed"],
                                each["title"]])
