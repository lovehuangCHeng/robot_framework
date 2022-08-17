*** Settings ***
Library           Selenium2Library    timeout=30
Variables         ../../../config/geturl.py
Resource          收支科目-resource.robot
Resource          ../../通用方法.robot

*** Test Cases ***
新建收支科目
    登录    ${收支科目}
    新建收支科目
    [Teardown]    关闭浏览器

编辑收支科目
    登录    ${收支科目}
    编辑收支科目
    [Teardown]    关闭浏览器

简单搜索收支科目
    登录    ${收支科目}
    简单搜索收支科目
    [Teardown]    关闭浏览器

高级搜索收支科目
    登录    ${收支科目}
    高级搜索收支科目
    [Teardown]    关闭浏览器

删除收支科目
    登录    ${收支科目}
    删除收支科目
    [Teardown]    关闭浏览器

批量删除收支科目
    登录    ${收支科目}
    批量删除收支科目
    [Teardown]    关闭浏览器
