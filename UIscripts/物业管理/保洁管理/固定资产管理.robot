*** Settings ***
Resource          固定资产管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
新建固定资产
    [Setup]    登录    ${固定资产}
    ${testdata}    固定资产变量
    固定资产新建    ${testdata}
    [Teardown]    关闭浏览器

固定资产编辑
    [Setup]    登录    ${固定资产}
    固定资产编辑    
    [Teardown]    关闭浏览器

固定资产查看
    [Setup]    登录    ${固定资产}
    固定资产查看    
    [Teardown]    关闭浏览器

固定资产高级搜索
    [Setup]    登录    ${固定资产}
    固定资产高级搜索    ${testdata}
    [Teardown]    关闭浏览器

固定资产删除
    [Setup]    登录    ${固定资产}
    固定资产删除    ${testdata}
    [Teardown]    关闭浏览器
