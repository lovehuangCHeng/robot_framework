*** Settings ***
Resource          会议记录-source.robot

*** Test Cases ***
新建会议记录
    登录    ${会议记录}
    sleep    1
    新建会议记录
    sleep    1
    [Teardown]    关闭浏览器

查看会议记录
    登录    ${会议记录}
    sleep    1
    搜索会议记录
    sleep    1
    查看会议记录
    [Teardown]    关闭浏览器

编辑会议记录
    登录    ${会议记录}
    sleep    1
    搜索会议记录
    编辑会议记录
    [Teardown]    关闭浏览器

删除会议记录
    登录    ${会议记录}
    sleep    1
    搜索会议记录
    删除会议记录
    sleep    1
    二次确认
    断言存在    //div[@class='ant-message-custom-content ant-message-success']/span[text()='删除成功']
    [Teardown]    关闭浏览器
