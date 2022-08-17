*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          收费历史记录—resource.txt
Library           Selenium2Library    timeout=20
Library           BuiltIn

*** Test Cases ***
