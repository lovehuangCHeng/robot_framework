*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          支出登记-resource.robot

*** Test Cases ***
新建支出科目
    登录    ${收支科目}
    新建支出科目
    [Teardown]    关闭浏览器

新建支出登记
    登录    ${支出登记}
    新建支出登记
    新建支出登记
    [Teardown]    关闭浏览器

编辑支出登记
    登录    ${支出登记}
    编辑支出登记
    [Teardown]    关闭浏览器

简单搜索支出登记
    登录    ${支出登记}
    简单搜索支出登记
    [Teardown]    关闭浏览器

高级搜索支出登记
    登录    ${支出登记}
    高级搜索支出登记
    [Teardown]    关闭浏览器

删除支出登记
    登录    ${支出登记}
    删除支出登记
    [Teardown]    关闭浏览器

批量删除支出登记
    登录    ${支出登记}
    批量删除支出登记
    [Teardown]    关闭浏览器
