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

新建品质巡查事项
    [Setup]    登录    ${品质巡查事项}
    新建品质巡查事项    ${name}
    [Teardown]    关闭浏览器

删除巡查事项
    [Setup]    登录    ${品质巡查事项}
    搜索品质巡查事项    ${name}
    删除品质巡查事项
    [Teardown]    关闭浏览器

删除巡查类别
    [Setup]    登录    ${品质巡查类别}
    搜索巡查类别    ${name}
    删除巡查类别
    [Teardown]    关闭浏览器
