from pyvirtualdisplay import Display 
from instapy import InstaPy 
from selenium import webdriver 
from pibyone import loader, typer, banner 
from geckodriver_autoinstaller import install 
from time import sleep as s 
from sys import argv
s(4)
display = Display(visible=0, size=(800, 600))
display.start()
install()
def session_startup():
      global session
      session = webdriver.Firefox()
      session.get("https://www.instagram.com/")

def follow(username,password,target):
   try:
    session_startup()
    s(4)
    session.find_element_by_name("username").send_keys(username)
    session.find_element_by_name("password").send_keys(password)
    session.find_element_by_name("password").send_keys(u'\ue007')
    s(6)
    user=session.find_element_by_tag_name("input")
    user.send_keys(target)
    s(2)
    s(4)
    user=session.find_element_by_class_name("Ap253").click()
    s(4)
    user=session.find_element_by_tag_name("button").click()
    s(3)
    display.stop()
    session.quit()
     
   except ConnectionRefusedError:
    s(0.5)

follow(argv[1],argv[2],argv[3])
