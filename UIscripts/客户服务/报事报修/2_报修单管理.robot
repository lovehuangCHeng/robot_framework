*** Settings ***
Resource          ../../通用方法.robot
Library           Selenium2Library
Resource          报修管理方法-resource.txt

*** Test Cases ***
新建报修完结
    [Setup]    登录    ${报修管理}
    新建报修完结
    [Teardown]    关闭浏览器

报修已关闭查看页面
    [Setup]    登录    ${报修管理}
    报修已关闭查看页面
    [Teardown]    关闭浏览器

报修tab状态切换
    [Setup]    登录    ${报修管理}
    报修tab状态切换
    [Teardown]    关闭浏览器

新建报修1
    [Setup]    登录    ${报修管理}
    新建报修
    [Teardown]    关闭浏览器

报修待分派数据按钮检查
    [Setup]    登录    ${报修管理}
    报修待分派数据按钮检查
    [Teardown]    关闭浏览器

报修待分派查看页面
    [Setup]    登录    ${报修管理}
    报修待分派查看页面
    [Teardown]    关闭浏览器

报修作废
    [Setup]    登录    ${报修管理}
    报修作废
    [Teardown]    关闭浏览器

报修作废数据按钮检查
    [Setup]    登录    ${报修管理}
    报修作废数据按钮检查
    [Teardown]    关闭浏览器

报修已作废查看页面
    [Setup]    登录    ${报修管理}
    报修已作废查看页面
    [Teardown]    关闭浏览器

报修启用
    [Setup]    登录    ${报修管理}
    报修启用
    [Teardown]    关闭浏览器

报修转交
    [Setup]    登录    ${报修管理}
    报修转交
    [Teardown]    关闭浏览器

报修删除
    [Setup]    登录    ${报修管理}
    报修删除
    [Teardown]    关闭浏览器

报修导出
    [Setup]    登录    ${报修管理}
    导出Excel
    [Teardown]    关闭浏览器

新建报修2
    [Setup]    登录    ${报修管理}
    新建报修
    [Teardown]    关闭浏览器

报修派工
    [Setup]    登录    ${报修管理}
    报修派工
    [Teardown]    关闭浏览器

报修已分配数据按钮检查
    [Setup]    登录    ${报修管理}
    报修切换已分配
    报修已分配数据按钮检查
    [Teardown]    关闭浏览器

报修添加说明
    [Setup]    登录    ${报修管理}
    报修添加说明
    [Teardown]    关闭浏览器

报修已分配查看页面
    [Setup]    登录    ${报修管理}
    报修已分配查看页面
    [Teardown]    关闭浏览器

新建报修派工
    [Setup]    登录    ${报修管理}
    新建报修派工
    [Teardown]    关闭浏览器

派工单回退
    [Setup]    登录    ${派工单管理}
    派工单回退
    [Teardown]    关闭浏览器

报修派工2
    [Setup]    登录    ${报修管理}
    报修派工
    [Teardown]    关闭浏览器
