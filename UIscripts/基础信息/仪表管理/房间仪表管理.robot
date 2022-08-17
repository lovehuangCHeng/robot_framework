*** Settings ***
Resource          ../../通用方法.robot
Resource          仪表管理方法.robot

*** Test Cases ***
新建房间仪表
    登录    ${房间仪表管理}
    进入iframe
    房间仪表新建    家庭用水表1
    [Teardown]    关闭浏览器

编辑房间仪表
    登录    ${房间仪表管理}
    进入iframe
    房间仪表编辑
    [Teardown]    关闭浏览器

查询房间仪表
    登录    ${房间仪表管理}
    进入iframe
    房间仪表搜索    家庭用水表1
    [Teardown]    关闭浏览器

房间仪表换表
    登录    ${房间仪表管理}
    进入iframe
    房间仪表换表
    [Teardown]    关闭浏览器

房间仪表批量添加
    登录    ${房间仪表管理}
    进入iframe
    房间仪表批量添加
    [Teardown]    关闭浏览器

房间仪表高级搜索
    登录    ${房间仪表管理}
    进入iframe
    仪表高级搜索方法
    [Teardown]    关闭浏览器

房间仪表删除
    登录    ${房间仪表管理}
    进入iframe
    房间仪表搜索    家庭用水表1
    房间仪表删除方法
    [Teardown]    关闭浏览器
