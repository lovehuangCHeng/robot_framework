*** Settings ***
Library           Selenium2Library    
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          销售单管理-resource.robot

*** Test Cases ***
新建销售单
    登录    ${销售单管理}
    新建销售单
    [Teardown]    关闭浏览器

搜索销售单
    登录    ${销售单管理}
    搜索销售单
    [Teardown]    关闭浏览器

编辑销售单
    登录    ${销售单管理}
    编辑销售单
    [Teardown]    关闭浏览器

简单搜索销售单
    登录    ${销售单管理}
    简单搜索销售单
    [Teardown]    关闭浏览器

删除销售单
    登录    ${销售单管理}
    删除销售单
    [Teardown]    关闭浏览器

导出销售单
    登录    ${销售单管理}
    导出销售单
    [Teardown]    关闭浏览器
