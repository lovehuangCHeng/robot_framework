*** Settings ***
Resource          已出账单-resource.txt
Library           Selenium2Library
Resource          ../../../通用方法.robot
Library           BuiltIn

*** Keywords ***
查询并判断未缴费的已出账单
    [Arguments]    ${do}
    数据库查询操作    ${GetBillYCodeAndDay}
    Run Keyword If    "${var}"!="[]"    查询获取未缴费已出账单
    ...    ELSE    LOG    不存在这样的数据
    ${i}    set variable if    "${var}"!="[]"    1
    Set Suite Variable    ${i}
    log    ${i}
    Run Keyword If    ${i}==1    ${do}
    ...    ELSE    log    无对应数据跳过该用例
    sleep    1

查询并判断已缴费且未打印的账单
    [Arguments]    ${do}
    数据库查询操作    ${GetBillNCodeAndDayST3}
    Run Keyword If    "${var}"!="[]"    查询获取缴费且未打印票据
    ...    ELSE    LOG    不存在这样的数据
    ${i}    set variable if    "${var}"!="[]"    1
    Set Suite Variable    ${i}
    log    ${i}
    Run Keyword If    ${i}==1    ${do}
    ...    ELSE    log    无对应数据跳过该用例
    sleep    1

查询并判断已缴费且以打印的账单
    [Arguments]    ${do}
    数据库查询操作    ${GetBillNCodeAndDayST2}
    Run Keyword If    "${var}"!="[]"    查询获取部分缴费且打印已出账单
    ...    ELSE    LOG    不存在这样的数据
    ${i}    set variable if    "${var}"!="[]"    1
    Set Suite Variable    ${i}
    log    ${i}
    Run Keyword If    ${i}==1    ${do}
    ...    ELSE    log    无对应数据跳过该用例
    sleep    1

查询已扎帐的账单
    [Arguments]    ${do}
    数据库查询操作    ${GetBillNCodeAndDayST4}
    Run Keyword If    "${var}"!="[]"    部分缴费且未打印票据且(已扎帐)
    ...    ELSE    LOG    不存在这样的数据
    ${i}    set variable if    "${var}"!="[]"    1
    Set Suite Variable    ${i}
    log    ${i}
    Run Keyword If    ${i}==1    ${do}
    ...    ELSE    log    无对应数据跳过该用例
    sleep    1
