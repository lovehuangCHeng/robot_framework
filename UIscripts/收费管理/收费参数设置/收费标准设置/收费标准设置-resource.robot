*** Settings ***
Variables         ../../../../config/elements/收费管理/收费Xpath.py
Library           Selenium2Library
Resource          ../../../通用方法.robot

*** Keywords ***
新建周期性收费标准
    ${SFBZ1}    Evaluate    random.randint(0, 9999)    random
    ${收费标准名称1}    Catenate    SEPARATOR=    ${SFBZ1}    UITE周期标准
    等待element元素可见    ${收费标准新建按钮}
    sleep    2
    Click Button    ${收费标准新建按钮}
    等待element元素可见    ${管理区下拉按钮}
    sleep    2
    Click Element    ${管理区下拉按钮}
    等待element元素可见    ${收费标准选择管理区}
    sleep    2
    Click Element    ${收费标准选择管理区}
    sleep    1
    Click Element    ${收费项目下拉按钮}
    等待element元素可见    ${收费标准选择收费项目}
    sleep    2
    Click Element    ${收费标准选择收费项目}
    等待element元素可见    ${收费标准名称}
    sleep    2
    Input Text    ${收费标准名称}    ${收费标准名称1}
    sleep    1
    Click Element    ${勾选按月计费}
    sleep    1
    input text    ${输入月单价}    50.55
    sleep    1
    Click Element    ${勾选滞纳金}
    等待element元素可见    ${输入收取比例}
    sleep    2
    Input Text    ${输入收取比例}    1
    sleep    1
    Click Button    ${保存收费标准}

新建用量收费标准
    ${SFBZ2}    Evaluate    random.randint(0, 9999)    random
    ${收费标准名称2}    Catenate    SEPARATOR=    ${SFBZ2}    UITE周期标准
    等待element元素可见    ${收费标准新建按钮}
    sleep    2
    Click Button    ${收费标准新建按钮}
    等待element元素可见    ${管理区下拉按钮}
    sleep    2
    Click Element    ${管理区下拉按钮}
    等待element元素可见    ${收费标准选择管理区}
    sleep    2
    Click Element    ${收费标准选择管理区}
    sleep    1
    Click Element    ${收费项目下拉按钮}
    等待element元素可见    ${收费标准选择收费项目}
    sleep    2
    Click Element    ${收费标准选择收费项目}
    等待element元素可见    ${收费标准名称}
    sleep    2
    Input Text    ${收费标准名称}    ${收费标准名称2}
    sleep    1
    Click Element    ${勾选按用量计费}
    sleep    1
    input text    ${输入用量单价}    50.55
    sleep    1
    Click Element    ${收费标准仪表下拉框}
    等待element元素可见    ${收费标准选择仪表}
    sleep    2
    Click Element    ${收费标准选择仪表}
    sleep    1
    Click Button    ${保存收费标准}

新建数量收费标准
    ${SFBZ3}    Evaluate    random.randint(0, 9999)    random
    ${收费标准名称3}    Catenate    SEPARATOR=    ${SFBZ3}    UITE周期标准
    等待element元素可见    ${收费标准新建按钮}
    sleep    2
    Click Button    ${收费标准新建按钮}
    等待element元素可见    ${管理区下拉按钮}
    sleep    2
    Click Element    ${管理区下拉按钮}
    等待element元素可见    ${收费标准选择管理区}
    sleep    2
    Click Element    ${收费标准选择管理区}
    等待element元素可见    ${收费项目下拉按钮}
    sleep    1
    Click Element    ${收费项目下拉按钮}
    等待element元素可见    ${收费标准选择收费项目}
    sleep    1
    Click Element    ${收费标准选择收费项目}
    等待element元素可见    ${收费标准名称}
    sleep    1
    Input Text    ${收费标准名称}    ${收费标准名称3}
    sleep    1
    Click Element    ${勾选按数量计费}
    等待element元素可见    ${输入数量单价}
    sleep    1
    input text    ${输入数量单价}    50.55
    sleep    1
    Click Button    ${保存收费标准}

新建固定金额收费标准
    ${SFBZ4}    Evaluate    random.randint(0, 9999)    random
    ${收费标准名称4}    Catenate    SEPARATOR=    ${SFBZ4}    UITE周期标准
    等待element元素可见    ${收费标准新建按钮}
    sleep    2
    Click Button    ${收费标准新建按钮}
    等待element元素可见    ${管理区下拉按钮}
    sleep    2
    Click Element    ${管理区下拉按钮}
    等待element元素可见    ${收费标准选择管理区}
    sleep    2
    Click Element    ${收费标准选择管理区}
    等待element元素可见    ${收费项目下拉按钮}
    sleep    1
    Click Element    ${收费项目下拉按钮}
    等待element元素可见    ${收费标准选择收费项目}
    sleep    1
    Click Element    ${收费标准选择收费项目}
    等待element元素可见    ${收费标准名称}
    sleep    1
    Input Text    ${收费标准名称}    ${收费标准名称4}
    sleep    1
    Click Element    ${勾选按固定金额计费}
    等待element元素可见    ${输入固定金额}
    sleep    1
    input text    ${输入固定金额}    50.55
    sleep    1
    Click Button    ${保存收费标准}

新建指定金额收费标准
    ${SFBZ4}    Evaluate    random.randint(0, 9999)    random
    ${收费标准名称5}    Catenate    SEPARATOR=    ${SFBZ4}    UITE周期标准
    等待element元素可见    ${收费标准新建按钮}
    sleep    2
    Click Button    ${收费标准新建按钮}
    等待element元素可见    ${管理区下拉按钮}
    sleep    2
    Click Element    ${管理区下拉按钮}
    等待element元素可见    ${收费标准选择管理区}
    sleep    2
    Click Element    ${收费标准选择管理区}
    等待element元素可见    ${收费项目下拉按钮}
    sleep    1
    Click Element    ${收费项目下拉按钮}
    等待element元素可见    ${收费标准选择收费项目}
    sleep    1
    Click Element    ${收费标准选择收费项目}
    等待element元素可见    ${收费标准名称}
    sleep    1
    Input Text    ${收费标准名称}    ${收费标准名称5}
    sleep    1
    Click Element    ${勾选指定金额计费}
    sleep    1
    Click Button    ${保存收费标准}

搜索收费标准
    等待element元素可见    ${高级搜索下拉}
    sleep    1
    Click Element    ${高级搜索下拉}
    sleep    1
    Input Text    ${根据名称搜索输入框}    UITE

编辑收费标准
    sleep    3
    Click Element    ${收费标准list复选框}
    sleep    1
    Click button    ${编辑标准}
    sleep    1
    input text    ${收费标准备注}    123
    sleep    1
    Click Button    ${保存收费标准}

删除收费标准
    sleep    3
    Click Element    ${收费标准list复选框}
    sleep    1
    Click button    ${删除标准}
    sleep    1
    二次确认

复制收费标准
    等待element元素可见    ${复制标准}
    sleep    1
    Click Button    ${复制标准}
    sleep    1
    Click Element    ${源管理区下拉框}
    sleep    1
    Click Element    ${选择源管理区}
    sleep    1
    Click Element    ${目标管理区下拉框}
    sleep    1
    Click Element    ${选择目标管理区}
    sleep    1
    Click Element    ${复制收费标准复选框}
    sleep    1
    Click button    ${下一步}
    sleep    1
    Click button    ${上一步}
    sleep    1
    Click button    ${下一步}
    sleep    1
    Click button    ${下一步2}
    sleep    1
    断言存在    ${操作成功提示}
    Click button    ${关闭复制收费标准}
    sleep    1

导出收费标准
    等待element元素可见    ${导出收费标准excel}
    sleep    1
    Click button    ${导出收费标准excel}
