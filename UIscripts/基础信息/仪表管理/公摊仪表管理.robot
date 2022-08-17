*** Settings ***
Resource          ../../通用方法.robot
Resource          仪表管理方法.robot

*** Test Cases ***
新建公摊仪表
    登录    ${公摊仪表管理}
    进入iframe
    公摊仪表新建    公摊用水表1
    [Teardown]    关闭浏览器

编辑公摊仪表
    登录    ${公摊仪表管理}
    进入iframe
    房间仪表编辑
    [Teardown]    关闭浏览器

查询公摊仪表
    登录    ${公摊仪表管理}
    进入iframe
    房间仪表搜索    公摊用水表1
    [Teardown]    关闭浏览器

公摊仪表换表
    登录    ${公摊仪表管理}
    进入iframe
    房间仪表搜索    公摊用水表1
    房间仪表换表
    [Teardown]    关闭浏览器

公摊仪表高级搜索
    登录    ${公摊仪表管理}
    进入iframe
    仪表高级搜索方法
    [Teardown]    关闭浏览器

公摊仪表删除
    登录    ${公摊仪表管理}
    进入iframe
    房间仪表搜索    公摊用水表1
    房间仪表删除方法
    [Teardown]    关闭浏览器
