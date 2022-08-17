*** Settings ***
Resource          ../../通用方法.robot
Library           Selenium2Library
Resource          报修管理方法-resource.txt

*** Test Cases ***
派工单待开始查看页面
    [Setup]    登录    ${派工单管理}
    派工单待开始查看页面
    [Teardown]    关闭浏览器

派工单待开始列表检查
    [Setup]    登录    ${派工单管理}
    派工单待开始列表检查
    [Teardown]    关闭浏览器

派工单开始处理
    [Setup]    登录    ${派工单管理}
    派工单开始处理
    [Teardown]    关闭浏览器

派工单延时申请1
    [Setup]    登录    ${派工单管理}
    派工单延时申请
    [Teardown]    关闭浏览器
	
派工单延时申请2
    [Setup]    登录    ${派工单管理}
    派工单延时申请
    [Teardown]    关闭浏览器

派工单进行中查看页面
    [Setup]    登录    ${派工单管理}
    派工单进行中查看页面
    [Teardown]    关闭浏览器

派工单进行中列表检查
    [Setup]    登录    ${派工单管理}
    派工单进行中列表检查
    [Teardown]    关闭浏览器

派工单回单
    [Setup]    登录    ${派工单管理}
    派工单回单
    [Teardown]    关闭浏览器

派工单已处理查看页面
    [Setup]    登录    ${派工单管理}
    派工单已处理查看页面
    [Teardown]    关闭浏览器

派工单已处理列表检查
    [Setup]    登录    ${派工单管理}
    派工单已处理列表检查
    [Teardown]    关闭浏览器

派工单确认
    [Setup]    登录    ${派工单管理}
    派工单确认
    [Teardown]    关闭浏览器

派工单已确认查看页面
    [Setup]    登录    ${派工单管理}
    派工单已确认查看页面
    [Teardown]    关闭浏览器

派工单已确认列表检查
    [Setup]    登录    ${派工单管理}
    派工单已确认列表检查
    [Teardown]    关闭浏览器

派工单作废
    [Setup]    登录    ${派工单管理}
    派工单作废
    [Teardown]    关闭浏览器

派工单启用
    [Setup]    登录    ${派工单管理}
    派工单启用
    [Teardown]    关闭浏览器

报修回访保存
    [Setup]    登录    ${报修管理}
    报修回访保存
    [Teardown]    关闭浏览器

报修回访关闭
    [Setup]    登录    ${报修管理}
    报修回访关闭
    [Teardown]    关闭浏览器

派工单已关闭查看页面
    [Setup]    登录    ${派工单管理}
    派工单已关闭查看页面
    [Teardown]    关闭浏览器

派工单已关闭列表检查
    [Setup]    登录    ${派工单管理}
    派工单已关闭列表检查
    [Teardown]    关闭浏览器

派工单领料
    [Setup]    登录    ${派工单管理}
    派工单领料
    [Teardown]    关闭浏览器

派工单退料
    [Setup]    登录    ${派工单管理}
    派工单退料
    [Teardown]    关闭浏览器

派工单导出Excel
    [Setup]    登录    ${派工单管理}
    导出Excel
    [Teardown]    关闭浏览器

派工单搜索
    [Setup]    登录    ${派工单管理}
    按派工单号进行搜索
    [Teardown]    关闭浏览器
