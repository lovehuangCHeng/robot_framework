*** Settings ***
Resource          ../../../通用方法.robot
Resource          文档类别管理-resource.txt
Variables         ../../../../config/geturl.py

*** Test Cases ***
新建文档类别
    登录    ${文档类别管理}
    : FOR    ${WDLB}    IN RANGE    2
    \    新建文档类别
    sleep    1
    [Teardown]    关闭浏览器

编辑文档按钮
    登录    ${文档类别管理}
    编辑文档类别
    sleep    1
    [Teardown]    关闭浏览器

删除文档类别
    登录    ${文档类别管理}
    删除文档类别
    [Teardown]    关闭浏览器
