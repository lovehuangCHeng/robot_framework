*** Settings ***
Resource          ../../通用方法.robot
Resource          客户管理中方法封装.robot

*** Test Cases ***
新建业主委员会
    登录    ${业主委员会}
    新建业主委员会
    [Teardown]    关闭浏览器

查询操作
    登录    ${业主委员会}
    查询业主委员会
    [Teardown]    关闭浏览器
