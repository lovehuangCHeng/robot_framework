*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          客户零头账户—resource.txt
Library           Selenium2Library    timeout=20

*** Test Cases ***
数据查询
	插入零头数据
    数据查询
	
查询零头账户明细
    登录    ${客户零头账户}
    查询零头账户
    [Teardown]    关闭浏览器

查询零头账户明细
    登录    ${客户零头账户}
    查询零头账户明细
    [Teardown]    关闭浏览器

零头账户导出
    登录    ${客户零头账户}
    零头数据导出
    [Teardown]    关闭浏览器
	
零头数据销毁
	销毁插入的零头数据