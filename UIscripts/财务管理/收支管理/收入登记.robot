*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Resource          收入登记-resource.robot
Variables         ../../../config/geturl.py

*** Test Cases ***
新建收入科目
    登录    ${收支科目}
    新建收入科目
    [Teardown]    关闭浏览器

新建收入登记
    登录    ${收入登记}
    新建收入登记
    新建收入登记
    [Teardown]    关闭浏览器

编辑收入登记
    登录    ${收入登记}
    编辑收入登记
    [Teardown]    关闭浏览器

简单搜索收入登记
    登录    ${收入登记}
    简单搜索收入登记
    [Teardown]    关闭浏览器

高级搜索收入登记
    登录    ${收入登记}
    高级搜索收入登记
    [Teardown]    关闭浏览器

删除收入登记
    登录    ${收入登记}
    删除收入登记
    [Teardown]    关闭浏览器

批量删除收入登记
    登录    ${收入登记}
    批量删除收入登记
    [Teardown]    关闭浏览器
