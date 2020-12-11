from instapy import InstaPy
from sys import argvs

usrname=argv[1]
pswd=argv[2]
target=argv[3]

session=InstaPy(username=usrname,password=pswd)
session.login()


