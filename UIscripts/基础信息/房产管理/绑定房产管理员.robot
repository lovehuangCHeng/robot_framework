*** Settings ***
Resource          房产管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
管理员绑定
    登录    ${绑定房产管理员}
    绑定房产管理员新增
    [Teardown]    关闭浏览器

管理员编辑
    登录    ${绑定房产管理员}
    绑定房产管理员编辑
    [Teardown]    关闭浏览器

管理员解除
    登录    ${绑定房产管理员}
    绑定房产管理员解绑
    [Teardown]    关闭浏览器
