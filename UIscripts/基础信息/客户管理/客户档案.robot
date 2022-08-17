*** Settings ***
Resource          ../../通用方法.robot
Variables         ../../../config/sql.py
Resource          客户管理中方法封装.robot

*** Test Cases ***
新建客户
    [Setup]   登录    ${客户档案}
	${testname}	客户名称变量
    新建客户数据    ${testname}    1254689
    [Teardown]    关闭浏览器

编辑客户
    [Setup]   登录    ${客户档案}
    编辑客户档案
    [Teardown]    关闭浏览器

查询客户
    [Setup]   登录    ${客户档案}
    查询客户数据    逐日者
    [Teardown]    关闭浏览器

高级查询客户
    [Setup]   登录    ${客户档案}
    客户数据高级搜索    逐日者
    [Teardown]    关闭浏览器

合并同名客户
    [Setup]   登录    ${客户档案}
    合并重名客户
    [Teardown]    关闭浏览器

删除客户
    [Setup]   登录    ${客户档案} 
    删除新建客户	逐日者
    [Teardown]    关闭浏览器

导出Excel
    [Setup]   登录    ${客户档案}
    Click Element    ${客户档案导出Excel}
    [Teardown]    关闭浏览器
