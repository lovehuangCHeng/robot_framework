*** Settings ***
Resource          房产管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
房间资源查看
    登录    ${房产资源平面图}
    房产资源平面图查看
    [Teardown]    关闭浏览器