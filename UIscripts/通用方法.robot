*** Settings ***
Library           Selenium2Library    implicit_wait=20
Library           DatabaseLibrary
Variables         ../config/sql.py
Library           DateTime
Variables         ../config/geturl.py
Variables         ../config/basicConfig.py
Library           Mylibrary

*** Keywords ***
pigx登录
    [Arguments]    ${testurl}
    Open Browser    ${basicURL}    chrome
    Maximize Browser Window
    sleep    1
    等待元素可用    id=username
    sleep    1
    input text    id=username    ${username}
    sleep    1
    等待元素可用    id=password
    sleep    1
    input text    id=password    ${password}
    sleep    1
    等待元素可用    //butto
    sleep    1
    click element    //button
    sleep    2
    Go To    ${testurl}
    sleep    2

关闭浏览器
    Close Browser

数据库查询操作
    [Arguments]    ${sqlselect}
    Connect To Database Using Custom Params    pyodbc    ${sqlconfig}
    ${var}    Query    ${sqlselect}
    Set Global Variable    ${var}
    Disconnect From Database
    [Return]    ${var}

数据库更新数据
    [Arguments]    ${sqlselect}
    Connect To Database Using Custom Params    pyodbc    ${sqlconfig}
    Execute Sql String    ${sqlselect}
    Disconnect From Database

二次确认
    sleep    2
    click element    //div[@class='ant-popover-buttons']/button[2]

搜索框内置搜索按钮
    Click Element    //span[@class='ant-input-group-addon']/button

断言存在
    [Arguments]    ${var}
    should not be empty    ${var}

断言不存在
    [Arguments]    ${var}
    should be empty    ${var}

断言值等于
    [Arguments]    ${var}    ${i}
    should be equal    ${var}    ${i}

断言值不等于
    [Arguments]    ${var}    ${i}
    should not be equal    ${var}    ${i}

进入iframe
    等待element元素可见    id=wuYeIframe
    sleep    1
    Select Frame    id=wuYeIframe

退出iframe
    Unselect Frame

断言值包含
    [Arguments]    ${actualvalue}    ${expectvalue}
    ${text}    获取元素文本    ${actualvalue}
    should contain    ${text}    ${expectvalue}

等待element元素可见
    [Arguments]    ${var}
    Wait Until Element Is Visible    ${var}    timeout=20

弹出窗确认选项
    Alert Should Be Present

等待button元素可见
    [Arguments]    ${var}
    Wait Until Element Is Enabled    ${var}    timeout=20

等待元素可用
    [Arguments]    ${var}
    Wait Until Element Is Enabled    ${var}    timeout=20

获取元素文本
    [Arguments]    ${locator}
    ${text}    get text    ${locator}
    [Return]    ${text}

获取当前年月日
    ${date}    Get Current Date    result_format=%Y-%m-%d
    [Return]    ${date}

获取一年前的年月日
    ${date}    Get Current Date    result_format=%Y-%m-%d
    ${date2}    Add Time To Date    ${date}    -365days    result_format=%Y-%m-%d
    [Return]    ${date2}

按时间自定义变量
    [Arguments]    ${str}
    ${value}    Time Random    ${str}
    [Return]    ${value}

删除变量
    [Arguments]    ${var}
    DelVar    ${var}

存储cookie到文件
    [Arguments]    ${cookies}
    save_Cookis    ${cookies}

读取cookie
    ${value}    set_Cookie
    [Return]    ${value}

登录保存cookie
    [Arguments]    ${testurl}
    Open Browser    ${basicURL}    chrome
    Maximize Browser Window
    sleep    1
    等待元素可用    ${用户名}
    sleep    1
    input text    ${用户名}    ${username}
    sleep    1
    等待元素可用    ${密码}
    sleep    1
    input text    ${密码}    ${password}
    sleep    1
    等待元素可用    ${登录按钮}
    sleep    1
    click element    ${登录按钮}
    sleep    2
    等待元素可用    ${提示框关闭}
    ${cookies}    get cookies
    存储cookie到文件    ${cookies}
    sleep    1
    Go To    ${testurl}
    sleep    2

登录
    [Arguments]    ${testurl}
    Open Browser    ${basicURL}    Chrome
    ${m}    读取cookie
    sleep    1
    Add Cookie    nova_pms_auth_Default    ${m}
    Maximize Browser Window
    sleep    1
    Go To    ${testurl}
    sleep    2
    等待元素可用    ${提示框关闭}
    click element    ${提示框关闭}
    sleep    1
    Go To    ${testurl}
    sleep    1

表单单元格数据不为0的元素查找
    [Arguments]    ${num1}    ${num2}
    FOR    ${i}    IN RANGE    ${num1}    ${num2}
    ${ele}    Set Variable    //tbody/tr[1]/td[${i}]/a
    ${value}    get text    ${ele}
    log    ${value}
    Run Keyword If    ${value}!=0    Exit For Loop
    [Return]    ${ele}

搜索输入中的管理区
    数据库查询操作    ${fenGongSiName}
    sleep    0.5
    Run Keyword If    "${var}"!="[]"    分公司存在执行    ${var}
    #选中分公司
    sleep    0.5
    数据库查询操作    ${guanliqu}
    sleep    0.5
    等待element元素可见    //span[text()='${var[0][0]}']
    sleep    0.5
    #选中管理区
    click element    //span[text()='${var[0][0]}']
    sleep    0.5

分公司存在执行
    [Arguments]    ${var}
    等待element元素可见    //span[text()='${var[0][0]}']/../../span[1]
    sleep    0.5
    #选中分公司
    click element    //span[text()='${var[0][0]}']/../../span[1]
    sleep    0.5
