*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          绑定收费标准-resource.robot
Library           Selenium2Library
Library           DatabaseLibrary

*** Test Cases ***
log 查询
    查询

添加绑定
    登录    ${绑定收费标准}
    sleep    1
    进入iframe
    添加绑定
    [Teardown]    关闭浏览器

批量修改绑定
    登录    ${绑定收费标准}
    sleep    1
    进入iframe
    批量修改
    [Teardown]    关闭浏览器

批量解除绑定
    登录    ${绑定收费标准}
    sleep    1
    进入iframe
    批量解除
    [Teardown]    关闭浏览器

添加绑定2
    登录    ${绑定收费标准}
    sleep    1
    进入iframe
    添加绑定
    [Teardown]    关闭浏览器

左侧树房间修改收费标准
    登录    ${绑定收费标准}
    sleep    1
    进入iframe
    搜索并编辑房间收费标准
    sleep    1
    log    '解除单个房间收费标准'
    [Teardown]    关闭浏览器
