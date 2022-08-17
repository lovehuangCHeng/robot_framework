*** Settings ***
Variables         ../../../../config/geturl.py
Resource          工作计划-resource.robot
Variables         ../../../../config/elements/OA系统/OAXpath.py

*** Test Cases ***
新建工作计划
    登录    ${工作计划}
    sleep    1
    新建工作保存计划
    sleep    1
    新建取消工作计划
    [Teardown]    关闭浏览器

编辑工作计划
    登录    ${工作计划}
    sleep    1
    搜索工作计划
    sleep    1
    编辑保存工作计划
    sleep    1
    编辑取消工作计划
    sleep    1
    查看工作备注
    sleep    1
    [Teardown]    关闭浏览器

更改工作计划状态
    登录    ${工作计划}
    sleep    1
    搜索工作计划
    更多-更改状态
    [Teardown]    关闭浏览器

工作计划审核管理
    登录    ${工作计划}
    sleep    1
    搜索工作计划
    sleep    1
    更多-审核
    sleep    1
    Click Button    ${二次确认审核}
    sleep    1
    更多-撤销审核
    sleep    1
    Click Button    ${二次确认撤销}
    sleep    1
    [Teardown]    关闭浏览器

删除工作计划
    登录    ${工作计划}
    sleep    1
    搜索工作计划
    删除工作计划
    sleep    1
    二次确认
    sleep    0.5
    断言存在    //div[@class='ant-message-custom-content ant-message-success']/span[text()='删除成功']
    [Teardown]    关闭浏览器
