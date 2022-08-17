*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          合同费用汇总表-resource.robot

*** Test Cases ***
合同费用汇总表_搜索
    登录    ${合同费用汇总表}
    合同费用汇总表_搜索
    [Teardown]    关闭浏览器

合同费用汇总表_导出
    登录    ${合同费用汇总表}
    合同费用汇总表_导出
    [Teardown]    关闭浏览器
