*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          已出账单-resource.txt
Library           Selenium2Library
Library           BuiltIn
Resource          查询判断.robot

*** Test Cases ***
导出excel
    登录    ${已出账单}
    进入iframe
    导出excel
    [Teardown]    关闭浏览器

导出明细excel
    登录    ${已出账单}
    进入iframe
    Click button    ${高级搜索下拉框}
    sleep    2
    input text    ${房间代码 }    1
    sleep    1
    Click Element    ${账单状态 }
    sleep    1
    click element    ${选择已出账单}
    sleep    1
    click button    ${单击搜索操作}
    sleep    5
    导出明细excel
    [Teardown]    关闭浏览器

删除未缴费的已出账单
    登录    ${已出账单}
    进入iframe
    查询并判断未缴费的已出账单    删除没有收费的账单
    [Teardown]    关闭浏览器

删除已扎帐的账单
    登录    ${已出账单}
    进入iframe
    查询已扎帐的账单    删除已扎帐的账单
    [Teardown]    关闭浏览器

冻结账单
    登录    ${已出账单}
    进入iframe
    冻结账单
    [Teardown]    关闭浏览器

解冻账单
    登录    ${已出账单}
    进入iframe
    解冻账单
    [Teardown]    关闭浏览器

标记开票
    登录    ${已出账单}
    进入iframe
    标记开票
    [Teardown]    关闭浏览器
