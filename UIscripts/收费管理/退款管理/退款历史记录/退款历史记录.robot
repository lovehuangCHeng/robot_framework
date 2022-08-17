*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          退款历史记录-resource.txt
Library           Selenium2Library
Library           BuiltIn

*** Test Cases ***
导出excel
    登录    ${退款历史记录}
    高级搜索
    [Teardown]    关闭浏览器

导出明细excel
    登录    ${退款历史记录}
    进入iframe
    查看退款明细
	[Teardown]    关闭浏览器

退款补打（不打印）
    登录    ${退款历史记录}
    进入iframe
    退款补打（不打印）
    [Teardown]    关闭浏览器

退款补打（打印）
    登录    ${退款历史记录}
    进入iframe
    退款补打（打印）
    [Teardown]    关闭浏览器
