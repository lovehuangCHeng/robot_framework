*** Settings ***
Library           Selenium2Library    timeout=30
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          保证金收退明细-resource.robot

*** Test Cases ***
保证金收退明细_搜索
    登录    ${保证金收退明细}
    保证金收退明细_搜索
    [Teardown]    关闭浏览器

保证金收退明细_导出
    登录    ${保证金收退明细}
    保证金收退明细_导出
    [Teardown]    关闭浏览器