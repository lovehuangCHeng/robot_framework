*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/OA系统/活动人事.py
Resource          ../../通用方法.robot

*** Keywords ***
班次设置新建
    Click Element    ${排班新建}
    sleep    2
    Input Text    ${班次名称}    白班
    sleep    2
    Click Element    ${活动保存}
    sleep    2

班次设置编辑
    Click Element    ${编辑班次}
    sleep    2
    Input Text    ${班次名称}    白班
    sleep    2
    Click Element    ${活动保存}
    sleep    2

切换到日历tab
    Click Element    ${日历管理}
    sleep    2

切换到周期tab
    Click Element    ${周期管理}
    sleep    2

切换到分组tab
    Click Element    ${排班分组}
    sleep    2

日历新建
    切换到日历tab
    Click Element    ${排班新建}
    sleep    2
    Input Text    ${日历名称}    周末双休
    sleep    2
    Click Element    ${活动保存}
    sleep    2

日历编辑
    切换到日历tab
    Click Element    ${编辑日历}
    sleep    2
    Input Text    ${日历名称}    周末双休
    sleep    2
    Click Element    ${活动保存}
    sleep    2

周期新建
    切换到周期tab
    Click Element    ${排班新建}
    sleep    2
    Input Text    ${周期名称}    两天计划
    sleep    2
    Click Element    ${第一天}
    sleep    2
    Click Element    ${每天的值}
    sleep    2
    Click Element    ${第二天}
    sleep    2
    Click Element    ${第二天的值}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

周期编辑
    切换到周期tab
    Click Element    ${编辑日历}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

排班分组新建
    切换到分组tab
    Click Element    ${分组新建}
    sleep    2
    Input Text    ${班组名称}    测试分组
    sleep    2
    Click Element    ${排班周期}
    sleep    2
    Click Element    ${排班周期的值}
    sleep    2
    Click Element    ${排班日历}
    sleep    2
    Click Element    ${排班日历的值}
    sleep    2
    Click Element    ${班组员工}
    sleep    2
    Click Element    ${班组员工数据}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

排班分组编辑
    切换到分组tab
    Click Element    ${排班分组编辑}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

排班分组查看
    切换到分组tab
    Click Element    ${排班分组查看}
    sleep    2
