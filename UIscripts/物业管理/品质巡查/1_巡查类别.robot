*** Settings ***
Resource          品质巡查方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
变量设置
    ${name}    Get Current Date    result_format=%Y%d%M%S
    Set Suite Variable    ${name}

新建巡查类别
    [Setup]    登录    ${品质巡查类别}
    新建巡查类别    ${name}
    [Teardown]    关闭浏览器

编辑巡查类别
    [Setup]    登录    ${品质巡查类别}
    搜索巡查类别    ${name}
    sleep    3
    编辑巡查类别
    [Teardown]    关闭浏览器

启用禁用巡查类别
    [Setup]    登录    ${品质巡查类别}
    搜索巡查类别    ${name}
    sleep    3
    禁用启用巡查类别
    [Teardown]    关闭浏览器
