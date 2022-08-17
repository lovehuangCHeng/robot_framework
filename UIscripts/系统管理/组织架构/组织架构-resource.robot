*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/系统管理/系统管理Xpath.py

*** Keywords ***
新建分公司
    等待element元素可见    ${组织架构新建按钮}
    sleep    2
    mouse over    ${组织架构新建按钮}
    sleep    1
    等待元素可用    ${新建分公司按钮}
    click element    ${新建分公司按钮}
    sleep    0.5
    等待element元素可见    ${上级机构下拉框}
    sleep    0.5
    click element    ${上级机构下拉框}
    sleep    0.5
    click element    ${选择上级部门}
    sleep    0.5
    Input Text    ${分公司部门名称输入框}    RF测试分公司
    sleep    0.5
    Input Text    ${分公司序号输入框}    RF001
    sleep    0.5
    Input Text    ${分公司地址输入框}    RF001地址
    sleep    0.5
    Input Text    ${分公司电话输入框}    15236987412
    sleep    0.5
    Input Text    ${新建分公司部门备注输入框}    RF001备注
    sleep    0.5
    click element    ${保存按钮}
    sleep    0.5

新建部门
    等待element元素可见    ${组织架构新建按钮}
    sleep    3
    mouse over    ${组织架构新建按钮}
    等待元素可用    ${新建部门按钮}
    sleep    0.5
    click element    ${新建部门按钮}
    等待element元素可见    ${上级机构下拉框}
    sleep    0.5
    click element    ${上级机构下拉框}
    sleep    0.5
    click element    ${选择上级部门}
    sleep    0.5
    Input Text    ${分公司部门名称输入框}    RF部门001
    sleep    0.5
    Input Text    ${新建分公司部门备注输入框}    RF部门001
    sleep    0.5
    click element    ${保存按钮}
    sleep    0.5

编辑组织架构
    sleep    0.5
    click element    ${编辑组织架构按钮}
    sleep    0.5
    click element    ${保存按钮}
    sleep    2

搜索
    [Arguments]    ${testdata}
    sleep    2
    Input Text    ${组织架构简单搜索输入框}    ${testdata}
    sleep    0.5
    click element    ${简单搜索按钮}
    sleep    1

删除方法
    sleep    1
    click element    ${展开中公司按钮}
    sleep    0.5
    click element    ${第二个复选框}
    sleep    0.5
    click element    ${删除组织架构按钮}
    sleep    0.5
    click element    ${确认删除按钮}
    sleep    1

删除部门
    搜索    RF部门001
    删除方法

删除分公司
    搜索    RF测试分公司
    删除方法
