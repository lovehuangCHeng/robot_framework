*** Settings ***
Resource          仪表类型方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
新建仪表类型
    登录保存cookie    ${仪表类型}
	${testYb}	仪表名称变量
    新建仪表类型    ${testYb}    吨
    [Teardown]    关闭浏览器

编辑仪表类型
    登录    ${仪表类型}
    仪表类型编辑
    [Teardown]    关闭浏览器

搜索仪表类型
    登录    ${仪表类型}
    仪表类型搜索    ${testYb}
    [Teardown]    关闭浏览器

高级搜索仪表类型
    登录    ${仪表类型}
    仪表类型高级搜索    ${testYb}
    [Teardown]    关闭浏览器

删除仪表类型
    登录    ${仪表类型}
    仪表类型搜索    ${testYb}
    仪表类型删除
    [Teardown]    关闭浏览器

