*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          现金收款明细-resource.robot

*** Test Cases ***
现金收款明细_资源树搜索
    登录    ${现金收款明细}
    进入iframe
    现金收款明细_资源树搜索
    [Teardown]    关闭浏览器

现金收款明细_搜索
    登录    ${现金收款明细}
    进入iframe
    现金收款明细_搜索
    [Teardown]    关闭浏览器

现金收款明细_导出
    登录    ${现金收款明细}
    进入iframe
    现金收款明细_导出
    [Teardown]    关闭浏览器
