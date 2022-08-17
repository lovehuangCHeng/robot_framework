*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Variables         ../../../config/geturl.py
Resource          数据备份-resource.robot

*** Test Cases ***
创建备份
    登录    ${数据备份}
    进入iframe
    创建备份
    [Teardown]    关闭浏览器

设置自动备份
    登录    ${数据备份}
    进入iframe
    设置自动备份
    [Teardown]    关闭浏览器

下载备份
    登录    ${数据备份}
    进入iframe
    下载备份
    [Teardown]    关闭浏览器

删除备份
    登录    ${数据备份}
    进入iframe
    删除备份
    [Teardown]    关闭浏览器

简单搜索备份
    登录    ${数据备份}
    进入iframe
    简单搜索备份
    [Teardown]    关闭浏览器

高级搜索浏览器
    登录    ${数据备份}
    进入iframe
    高级搜索备份
    [Teardown]    关闭浏览器
