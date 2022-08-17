*** Settings ***
Resource          巡更管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
新建巡更计划
    [Setup]    登录    ${巡更计划}
    ${testjihua}    巡更计划变量
    巡更计划新建    ${testjihua}
    [Teardown]    关闭浏览器

编辑巡更计划
    [Setup]    登录    ${巡更计划}
    巡更计划编辑    ${testjihua}
    [Teardown]    关闭浏览器

查看巡更计划
    [Setup]    登录    ${巡更计划}
    巡更计划查看
    [Teardown]    关闭浏览器

高级搜索巡更计划
    [Setup]    登录    ${巡更计划}
    巡更计划高级搜索
    [Teardown]    关闭浏览器

巡更计划复制
    [Setup]    登录    ${巡更计划}
    ${testjihua1}    巡更计划变量1
    巡更计划复制    ${testjihua}    ${testjihua1}
    [Teardown]    关闭浏览器

巡更计划删除
    [Setup]    登录    ${巡更计划}
    巡更计划删除    ${testjihua1}
    [Teardown]    关闭浏览器

新建巡更计划1
    [Setup]    登录    ${巡更计划}
    巡更计划新建    ${testjihua1}
    [Teardown]    关闭浏览器

巡更计划启用
    [Setup]    登录    ${巡更计划}
    巡更计划启用    ${testjihua1}
    [Teardown]    关闭浏览器

巡更计划停用
    [Setup]    登录    ${巡更计划}
    巡更计划停用    ${testjihua1}
    [Teardown]    关闭浏览器
