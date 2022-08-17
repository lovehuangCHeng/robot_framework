*** Settings ***
Library           Selenium2Library
Variables         ../../../../config/elements/OA系统/OAXpath.py
Resource          ../../../通用方法.robot

*** Keywords ***
新建工作保存计划
    ${JH}    Evaluate    random.randint(0, 999)    random
    ${计划序号}    Catenate    SEPARATOR=    ${JH}    UITE
    sleep    1
    等待element元素可见    ${新建工作计划按钮}
    Click Button    ${新建工作计划按钮}
    sleep    1
    Click Element    ${工作计划管理区下拉框}
    sleep    1
    等待element元素可见    ${工作计划选择管理区}
    Click Element    ${工作计划选择管理区}
    sleep    1
    Input Text    ${工作计划序号}    ${计划序号}
    Input Text    ${工作计划名称}    ${计划序号}
    Click Element    ${工作计划下拉框}
    sleep    2
    等待element元素可见    ${工作计划选择类别}
    Click Element    ${工作计划选择类别}
    sleep    1
    Click Element    ${工作计划开始时间}
    等待element元素可见    ${选择开始时间}
    sleep    1
    Click Element    ${选择开始时间}
    sleep    1
    Click Element    ${工作计划结束时间}
    等待element元素可见    ${选择结束时间}
    sleep    1
    Click Element    ${选择结束时间}
    sleep    1
    input text    ${工作内容}    neironguite
    sleep    1
    Click Button    ${工作计划保存按钮}
	sleep    1

新建取消工作计划
	等待element元素可见    ${新建工作计划按钮}
    Click Button    ${新建工作计划按钮}
    sleep    1
	等待element元素可见    ${工作计划取消按钮}
    Click Button    ${工作计划取消按钮}
	sleep    1

搜索工作计划
    等待element元素可见    ${工作计划管理搜索框}
    sleep    1
    Input Text    ${工作计划管理搜索框}    uite
    sleep    1
    搜索框内置搜索按钮

编辑保存工作计划
    等待element元素可见    ${编辑工作计划}
    sleep    1
    Click Element    ${编辑工作计划}
    等待element元素可见    ${工作内容}
    sleep    1
    input text    ${工作内容}    VUIteBIANJIedit
    sleep    1
    Click Button    ${工作计划保存按钮}

编辑取消工作计划
    等待element元素可见    ${编辑工作计划}
    sleep    1
    Click Element    ${编辑工作计划}
    sleep    1
    等待element元素可见    ${工作计划取消按钮}
    sleep    1
    Click Button    ${工作计划取消按钮}

更多-更改状态
    等待element元素可见    ${工作计划更多}
    sleep    1
    Click Element    ${工作计划更多}
    sleep    2
    等待element元素可见    ${更多更改状态}
    sleep    2
    Click Element    ${更多更改状态}
    sleep    2
    等待element元素可见    ${状态选择下拉框}
    Click Element    ${状态选择下拉框}
    sleep    1
    等待element元素可见    ${暂停工作计划}
    Click Element    ${暂停工作计划}
    sleep    1
    Click Element    ${工作计划保存状态}

更多-审核
    等待element元素可见    ${工作计划更多}
    sleep    1
    Click Element    ${工作计划更多}
    等待element元素可见    ${更多审核工作}
    sleep    1
    Click Element    ${更多审核工作}

更多-撤销审核
    等待element元素可见    ${工作计划更多}
    sleep    2
    Click Element    ${工作计划更多}
    sleep    2
    等待element元素可见    ${更多撤销审核工作}
    sleep    2
    Click Element    ${更多撤销审核工作}

删除工作计划
    等待element元素可见    ${工作计划更多}
    sleep    1
    Click Element    ${工作计划更多}
    等待element元素可见    ${更多删除工作}
    sleep    1
    Click Element    ${更多删除工作}

查看工作备注
    等待element元素可见    ${工作计划更多}
    sleep    2
    Click Element    ${工作计划更多}
