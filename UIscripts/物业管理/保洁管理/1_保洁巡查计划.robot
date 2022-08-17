*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Resource          保洁管理方法.robot

*** Test Cases ***
新建保洁计划
    [Setup]    登录    ${保洁巡查计划}
    ${testdata}    保洁计划名称变量
    保洁计划新建    ${testdata}
    [Teardown]    关闭浏览器

编辑保洁计划
    [Setup]    登录    ${保洁巡查计划}
    保洁计划编辑    ${testdata}
    [Teardown]    关闭浏览器

查看保洁计划
    [Setup]    登录    ${保洁巡查计划}
    保洁计划查看
    [Teardown]    关闭浏览器

高级搜索保洁计划
    [Setup]    登录    ${保洁巡查计划}
    保洁计划高级搜索
    [Teardown]    关闭浏览器

复制保洁计划
    [Setup]    登录    ${保洁巡查计划}
    ${testdata1}    保洁计划名称变量1
    保洁计划复制    ${testdata}    ${testdata1}
    [Teardown]    关闭浏览器

删除保洁计划
    [Setup]    登录    ${保洁巡查计划}
    保洁计划删除    ${testdata1}
    [Teardown]    关闭浏览器

新建保洁计划1
    [Setup]    登录    ${保洁巡查计划}
    保洁计划新建    ${testdata1}
    [Teardown]    关闭浏览器

启用保洁计划
    [Setup]    登录    ${保洁巡查计划}
    保洁计划启用    ${testdata1}
    [Teardown]    关闭浏览器

停用保洁计划
    [Setup]    登录    ${保洁巡查计划}
    保洁计划停用    ${testdata1}
    [Teardown]    关闭浏览器
