*** Settings ***
Resource          ../../通用方法.robot
Resource          保洁管理方法.robot

*** Test Cases ***
查看保洁任务
    [Setup]    登录    ${保洁巡查任务}
    保洁任务搜索
    [Teardown]    关闭浏览器

切换保洁任务状态
    [Setup]    登录    ${保洁巡查任务}
    保洁任务状态切换
    [Teardown]    关闭浏览器

保洁任务高级搜索
    [Setup]    登录    ${保洁巡查任务}
    保洁任务高级搜索    保洁计划
    [Teardown]    关闭浏览器

保洁任务查看详情
    [Setup]    登录    ${保洁巡查任务}
    保洁任务查看详情
    [Teardown]    关闭浏览器

保洁任务删除
    [Setup]    登录    ${保洁巡查任务}
    保洁任务删除
    [Teardown]    关闭浏览器
