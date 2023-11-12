#!/bin/python3

import os

while True:
    print(">>>", end=" ")
    input1 = input()
    result = os.popen(f''' i3-msg "{input1}" ''').read()
    print(result)
