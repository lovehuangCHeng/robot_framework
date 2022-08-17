*** Settings ***
Resource          品质巡查方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
变量设置
    ${name}    Get Current Date    result_format=%Y%d%M%S
    Set Suite Variable    ${name}
 
分状态查询巡查任务
    [Setup]    登录    ${品质巡查任务}
    分状态查询巡查任务
    [Teardown]    关闭浏览器

巡查问题高级搜索_状态搜索
    [Setup]    登录    ${品质巡查问题}
    巡查问题高级搜索_状态搜索
    [Teardown]    关闭浏览器
