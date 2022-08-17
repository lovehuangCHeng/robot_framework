*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          固定金额分摊-resource.txt
Library           Selenium2Library
Library           BuiltIn

*** Test Cases ***
数据查询
    数据查询

新建分摊
    登录    ${固定金额分摊}
    进入iframe
    新建分摊
    [Teardown]    关闭浏览器

新建分摊2
    登录    ${固定金额分摊}
    进入iframe
    新建分摊
    [Teardown]    关闭浏览器

编辑分摊
    登录    ${固定金额分摊}
    进入iframe
    编辑分摊
    [Teardown]    关闭浏览器

删除分摊
    登录    ${固定金额分摊}
    进入iframe
    删除分摊
    [Teardown]    关闭浏览器

分摊金额
    登录    ${固定金额分摊}
    进入iframe
    分摊金额
    [Teardown]    关闭浏览器

查看分摊结果
    登录    ${固定金额分摊}
    进入iframe
    查看分摊结果
    [Teardown]    关闭浏览器
