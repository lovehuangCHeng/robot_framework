*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          收费项目定义-resource.txt
Library           Selenium2Library

*** Test Cases ***
新建收费项目（营业）
    登录    ${收费项目定义}
    新建营业性收费项目
    sleep    0.5
    断言存在    //span[text()='创建收费项目成功！']
    sleep    1
    [Teardown]    关闭浏览器

新建收费项目（保证金）
    登录    ${收费项目定义}
    新建保证金、代收费收费项目
    sleep    0.5
    断言存在    //span[text()='创建收费项目成功！']
    sleep    1
    搜索收费项目
    sleep    1
    删除收费项目
    sleep    0.5
    断言存在    //span[text()='删除成功!成功条数【1】！']
    [Teardown]    关闭浏览器

新建收费项目（预存费）
    登录    ${收费项目定义}
    新建预存费收费项目
    sleep    0.5
    断言存在    //span[text()='创建收费项目成功！']
    sleep    1
    搜索收费项目
    sleep    1
    删除收费项目
    sleep    0.5
    断言存在    //span[text()='删除成功!成功条数【1】！']
    [Teardown]    关闭浏览器

编辑收费项目
    登录    ${收费项目定义}
    搜索收费项目
    sleep    1
    编辑收费项目
    [Teardown]    关闭浏览器

删除收费项目
    登录    ${收费项目定义}
    搜索收费项目
    sleep    1
    删除收费项目
    sleep    1
    断言存在    //span[text()='删除成功!成功条数【1】！']
    [Teardown]    关闭浏览器
