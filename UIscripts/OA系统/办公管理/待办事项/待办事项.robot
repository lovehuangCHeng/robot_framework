*** Settings ***
Resource          ../../../通用方法.robot
Variables         ../../../../config/geturl.py
Resource          待办事项-resource.txt

*** Test Cases ***
新建待办事项
    登录    ${待办事项}
    sleep    2
    新建待办事项
    [Teardown]    关闭浏览器

编辑待办事项
    登录    ${待办事项}
    sleep    2
    编辑待办事项
    [Teardown]    关闭浏览器

查看待办事项
    登录    ${待办事项}
    sleep    2
    查看待办事项
    [Teardown]    关闭浏览器

完成待办事项
    登录    ${待办事项}
    sleep    2
    完成待办事项
    [Teardown]    关闭浏览器

删除待办事项
    登录    ${待办事项}
    sleep    2
    删除待办事项
    [Teardown]    关闭浏览器
