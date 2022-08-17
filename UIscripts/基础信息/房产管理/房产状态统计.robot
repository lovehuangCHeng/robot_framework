*** Settings ***
Resource          房产管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
搜索房产状态
    登录    ${房产状态统计}
    进入iframe
    房产状态搜索    1
    [Teardown]    关闭浏览器

高级查询房产状态
    登录    ${房产状态统计}
    进入iframe
    房产状态高级搜索
    [Teardown]    关闭浏览器
