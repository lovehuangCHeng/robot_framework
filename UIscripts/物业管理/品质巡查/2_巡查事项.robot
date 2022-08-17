*** Settings ***
Resource          品质巡查方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
变量设置
    ${name}    Get Current Date    result_format=%Y%d%M%S
    Set Suite Variable    ${name}

新建品质巡查事项
    [Setup]    登录    ${品质巡查事项}
    新建品质巡查事项    ${name}
    [Teardown]    关闭浏览器

编辑品质巡查事项
    [Setup]    登录    ${品质巡查事项}
    搜索品质巡查事项    ${name}
    sleep    3
    编辑品质巡查事项
    [Teardown]    关闭浏览器

禁用启用品质巡查事项
    [Setup]    登录    ${品质巡查事项}
    搜索品质巡查事项    ${name}
    sleep    3
    禁用启用品质巡查事项
    [Teardown]    关闭浏览器
