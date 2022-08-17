*** Settings ***
Resource          活动方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***

新建活动类别
    [Setup]    登录    ${活动列表}
    活动类别新建    活动类别
    [Teardown]    关闭浏览器

新建活动
    [Setup]    登录    ${活动列表}
    ${testdata}    活动主题变量
    活动新建    ${testdata}
    [Teardown]    关闭浏览器

活动编辑
    [Setup]    登录    ${活动列表}
    活动编辑    ${testdata}
    [Teardown]    关闭浏览器

活动查看
    [Setup]    登录    ${活动列表}
    活动查看    ${testdata}
    [Teardown]    关闭浏览器

活动发布
    [Setup]    登录    ${活动列表}
    活动发布    ${testdata}
    [Teardown]    关闭浏览器

活动下线
    [Setup]    登录    ${活动列表}
    活动下线    ${testdata}
    [Teardown]    关闭浏览器

活动删除
    [Setup]    登录    ${活动列表}
    活动删除    ${testdata}
    [Teardown]    关闭浏览器
