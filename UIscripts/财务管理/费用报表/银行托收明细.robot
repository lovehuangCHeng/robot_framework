*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          银行托收明细-resource.robot

*** Test Cases ***
银行托收明细_资源树搜索
    登录    ${银行托收明细}
    进入iframe
    银行托收明细_资源树搜索
    [Teardown]    关闭浏览器

银行托收明细_搜索
    登录    ${银行托收明细}
    进入iframe
    银行托收明细_搜索
    [Teardown]    关闭浏览器

银行托收明细_导出
    登录    ${银行托收明细}
    进入iframe
    银行托收明细_导出
    [Teardown]    关闭浏览器
