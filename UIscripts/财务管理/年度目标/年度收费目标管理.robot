*** Settings ***
Library           Selenium2Library    timeout=30
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          年度收费目标管理-resource.robot

*** Test Cases ***
判断该种收费项目是否已有目标并删除
    [Setup]    登录    ${年度收费目标管理}
    判断该种收费项目是否已有目标并删除
    [Teardown]    关闭浏览器

新建年度收费目标
    [Setup]    登录    ${年度收费目标管理}
    新建年度收费目标
    sleep    3
    [Teardown]    关闭浏览器

编辑收费目标
    [Setup]    登录    ${年度收费目标管理}
    编辑收费目标
    sleep    3
    [Teardown]    关闭浏览器

删除收费目标
    [Setup]    登录    ${年度收费目标管理}
    删除收费目标
    sleep    3
    [Teardown]    关闭浏览器
