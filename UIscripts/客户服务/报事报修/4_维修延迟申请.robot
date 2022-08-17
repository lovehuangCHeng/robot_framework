*** Settings ***
Resource          ../../通用方法.robot
Library           Selenium2Library
Resource          报修管理方法-resource.txt

*** Test Cases ***
维修延时同意
    [Setup]    登录    ${维修延时审批}
    维修延时同意
    [Teardown]    关闭浏览器

维修延时拒绝
    [Setup]    登录    ${维修延时审批}
    维修延时拒绝
    [Teardown]    关闭浏览器
