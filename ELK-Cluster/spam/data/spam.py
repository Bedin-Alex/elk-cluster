#!/usr/local/bin/python3
import time, os

host = os.environ.get('HOSTNAME')

id=1
while True:
    text = f"Message from {host} - {id}"
    if (id % 10) == 0:
        text=text+" Error"
    print(f"{text}")
    id=id+1
#    time.sleep(100/1000)
# Uncomment command above, if you want to hame 100ms delay 