*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/月报表Xpath.py

*** Keywords ***
判断该种收费项目是否已有目标并删除
    等待元素可用    ${管理区下拉}
    click element    ${管理区下拉}
    搜索输入中的管理区
    sleep    1
    click element    ${年份选择下拉}
    sleep    1
    等待元素可用    ${选择当前年}
    sleep    1
    click element    ${选择当前年}
    sleep    1
    click element    ${收费项目下拉}
    sleep    1
    等待元素可用    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click button    ${查询按钮}
    ${i}    Run Keyword And Return Status    等待element元素可见    ${删除按钮}
    Run Keyword If    ${i}==True    click element    ${删除按钮}
    ...    ELSE    log    ${i}
    sleep    1
    Run Keyword If    ${i}==True    click button    ${二次确定 }
    ...    ELSE    log    未执行删除操作
    sleep    2

新建年度收费目标
    等待元素可用    ${新建按钮}
    sleep    1
    click button    ${新建按钮}
    sleep    1
    click element    ${新建页面选择年份}
    sleep    1
    等待元素可用    ${选择当前年}
    sleep    1
    click element    ${选择当前年}
    sleep    1
    click element    ${新建页面管理区下拉}
    sleep    1
    等待元素可用    //li[text()='${var[0][0]}']
    sleep    1
    click element    //li[text()='${var[0][0]}']
    sleep    1
    click element    ${新建页面收费项目下拉}
    sleep    1
    等待元素可用    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    input text    ${收本年目标金额}    50000
    sleep    1
    input text    ${收历欠目标金额}    50000
    sleep    1
    click button    ${保存按钮}
    sleep    2

编辑收费目标
    等待元素可用    ${管理区下拉}
    click element    ${管理区下拉}
    搜索输入中的管理区
    sleep    1
    click element    ${年份选择下拉}
    sleep    1
    等待元素可用    ${选择当前年}
    sleep    1
    click element    ${选择当前年}
    sleep    1
    click element    ${收费项目下拉}
    sleep    1
    等待元素可用    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click button    ${查询按钮}
    sleep    1
    等待element元素可见    ${编辑按钮}
    click element    ${编辑按钮}
    等待element元素可见    ${收本年目标金额}
    sleep    1
    input text    ${收本年目标金额}    50001
    sleep    1
    click button    ${保存按钮}
    sleep    2

删除收费目标
    等待元素可用    ${管理区下拉}
    click element    ${管理区下拉}
    搜索输入中的管理区
    sleep    1
    click element    ${年份选择下拉}
    sleep    1
    等待元素可用    ${选择当前年}
    sleep    1
    click element    ${选择当前年}
    sleep    1
    click element    ${收费项目下拉}
    sleep    1
    等待元素可用    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click button    ${查询按钮}
    sleep    1
    等待element元素可见    ${删除按钮}
    click element    ${删除按钮}
    sleep    1
    click button    ${二次确定}
    sleep    2
    等待element元素可见    ${删除成功断言}
