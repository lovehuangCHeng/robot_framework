*** Settings ***
Resource          会议类别管理-resource.txt
Library           Selenium2Library
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot

*** Test Cases ***
新建会议类别
    [Setup]		登录    ${会议类别管理}
    新建会议类别
    [Teardown]    关闭浏览器

编辑会议类别
    [Setup]		登录    ${会议类别管理}
    编辑会议类别
    [Teardown]    关闭浏览器

删除会议类别
    [Setup] 	登录    ${会议类别管理}
    删除会议类别
    [Teardown]    关闭浏览器
