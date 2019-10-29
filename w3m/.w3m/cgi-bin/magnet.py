#!/usr/bin/python
# coding=utf-8

import sys
import os
import subprocess

uri = os.environ.get('QUERY_STRING')
referer = os.environ.get('HTTP_REFERER')

if not uri:
    print("Error: No URI")
    sys.exit()

cmd_list = ("transadd", uri)

subprocess.call(cmd_list)

if referer:
    print("HTTP/1.1 303 See Other")
    print("Location: {}".format(referer))
