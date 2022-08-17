*** Settings ***
Resource          人事管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
考勤管理新建
    [Setup]    登录保存cookie    ${考勤管理}
    ${testdata}    新建员工变量
    考勤管理新建    ${testdata}
    [Teardown]    关闭浏览器

考勤管理添加
    [Setup]    登录    ${考勤管理}
    考勤管理添加    ${testdata}    2
    [Teardown]    关闭浏览器

考勤查看编辑
    [Setup]    登录    ${考勤管理}
    考勤查看编辑    ${testdata}
    [Teardown]    关闭浏览器

考勤管理高级搜索查询
    [Setup]    登录    ${考勤管理}
    考勤管理高级搜索查询    ${testdata}
    [Teardown]    关闭浏览器

考勤查看导出
    [Setup]    登录    ${考勤管理}
    考勤查看导出    ${testdata}
    [Teardown]    关闭浏览器

考勤查看删除
    [Setup]    登录    ${考勤管理}
    考勤查看删除    ${testdata}
    [Teardown]    关闭浏览器
