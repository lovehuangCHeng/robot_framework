*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Variables         ../../../config/elements/物业管理/保洁巡查.py

*** Keywords ***
固定资产新建
    [Arguments]    ${test}
    Click Element    ${新建资产}
    sleep    2
    等待元素可用    ${园区名称}
    sleep    1
    Click Element    ${园区名称}
    sleep    2
    Click Element    ${园区名称数据选择}
    sleep    2
    Input Text    ${资产编号}    ${test}
    sleep    2
    Input Text    ${资产名称}    ${test}
    sleep    2
    Click Element    ${资产保存}
    sleep    2

固定资产编辑	
    Click Element    ${资产编辑}
    sleep    2
    Click Element    ${资产保存}
    sleep    2

固定资产搜索
    [Arguments]    ${testdata}
    Input Text    ${搜索框}    ${testdata}
    sleep    2
    Click Element    ${搜索按钮}
    sleep    2

固定资产高级搜索
    [Arguments]    ${testdata}
    Click Element    ${高级搜索}
    sleep    2
    Input Text    ${资产名称}    ${testdata}
    sleep    2
    Click Element    ${高级搜索按钮}
    sleep    2

固定资产查看
    Click Element    ${资产查看}
    sleep    2

固定资产删除
    [Arguments]    ${testdata}
    固定资产搜索	${testdata}
    Click Element    ${资产删除}
    sleep    2
    Click Element    ${确认删除}
    sleep    2

固定资产变量
    ${testdata}    Time Random    固定资产
    Set Suite Variable    ${testdata}
    [Return]    ${testdata}
