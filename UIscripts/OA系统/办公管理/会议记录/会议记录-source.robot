*** Settings ***
Variables         ../../../../config/elements/OA系统/OAXpath.py
Library           Selenium2Library
Resource          ../../../通用方法.robot

*** Keywords ***
新建会议记录
    ${HY}    Evaluate    random.randint(0, 999)    random
    ${会议序号}    Catenate    SEPARATOR=    ${HY}    UITE
    click button    ${新建会议记录}
    sleep    1
    Click Element    ${会议记录管理区选择下拉框}
    sleep    1
    等待element元素可见    ${会议记录选择管理区}
    sleep    1
    Click Element    ${会议记录选择管理区}
    sleep    1
    Input Text    ${会议记录序号}    ${会议序号}
    sleep    1
    Input Text    ${会议名称}    ${会议序号}    名称
    sleep    1
    Click Element    ${会议类别下拉框}
    sleep    1
    Click Element    ${选择会议类别}
    sleep    1
    Click Button    ${会议记录保存按钮}

编辑会议记录
    等待element元素可见    ${编辑会议记录}
    sleep    3
    Click Element    ${编辑会议记录}
    sleep    1
    等待element元素可见    ${会议主题}
    sleep    3
    input text    ${会议主题}    123
    Click Button    ${会议记录保存按钮}

搜索会议记录
    input text    ${会议搜索框}    UITE
    sleep    1
    搜索框内置搜索按钮
    sleep    1

查看会议记录
    等待element元素可见    ${查看会议记录}
    sleep    3
    Click Element    ${查看会议记录}
    sleep    1
    等待element元素可见    ${查看会议记录返回}
    sleep    1
    Click Button    ${查看会议记录返回}
    sleep    1

删除会议记录
    等待element元素可见    ${删除会议记录}
    sleep    1
    Click Element    ${删除会议记录}
