*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          经营性收费—resource.txt
Library           Selenium2Library    timeout=20
Library           BuiltIn

*** Test Cases ***
数据查询
	更新固定金额数据
    数据查询

经营性收费
    登录    ${经营性收费}
    进入iframe
    经营性收费
    [Teardown]    关闭浏览器

新增客户
    登录    ${经营性收费}
	${testdata}		客户变量
    进入iframe
    新增客户	${testdata}
    [Teardown]    关闭浏览器
	
经营性收费-退款使用
    登录    ${经营性收费}
    进入iframe
    经营性收费
    [Teardown]    关闭浏览器
	
性收费-二次退款使用
    登录    ${经营性收费}
    进入iframe
    经营性收费
    [Teardown]    关闭浏览器
