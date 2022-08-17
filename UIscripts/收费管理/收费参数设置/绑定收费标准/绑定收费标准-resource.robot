*** Settings ***
Variables         ../../../../config/elements/收费管理/收费Xpath.py
Library           Selenium2Library
Resource          ../../../通用方法.robot
Variables         ../../../../config/sql.py
Library           DatabaseLibrary

*** Keywords ***
添加绑定
    等待element元素可见    ${添加绑定按钮}
    sleep    2
    Click Element    ${添加绑定按钮}
    sleep    2
    Click Element    ${添加绑定选择管理区下拉框}
    等待element元素可见    //select[@id='batchAddRegionId']/option[@value='${GLQID}']
    sleep    2
    Click Element    //select[@id='batchAddRegionId']/option[@value='${GLQID}']    \    \    #选择管理区
    sleep    2
    Click Element    ${添加绑定搜索房间}
    等待element元素可见    //li[@id='${GLQLYID}']//i[@class='jstree-icon jstree-checkbox']
    sleep    2
    Click Element    //li[@id='${GLQLYID}']//i[@class='jstree-icon jstree-checkbox']    \    \    #勾选管理区下楼宇
    等待element元素可见    ${绑定下一步}
    sleep    2
    Click Element    ${绑定下一步}
    等待element元素可见    ${添加绑定项目下拉}
    sleep    2
    Click Element    ${添加绑定项目下拉}
    等待element元素可见    ${添加绑定1项目}
    sleep    2
    Click Element    ${添加绑定1项目}
    等待element元素可见    ${添加绑定标准下拉}
    sleep    2
    Click Element    ${添加绑定标准下拉}
    等待element元素可见    ${添加绑定1标准}
    sleep    2
    Click Element    ${添加绑定1标准}
    sleep    1
    Click Element    ${开始收费日期选择器}
    等待element元素可见    ${选择收费开始日期}
    sleep    2
    Click Element    ${选择收费开始日期}
    sleep    1
    Click Element    ${绑定下一步}
    等待element元素可见    ${确认添加页面下一步}
    sleep    2
    Click Element    ${确认添加页面下一步}
    等待element元素可见    ${添加绑定确认添加}
    sleep    2
    Click button    ${添加绑定确认添加}
    sleep    3
    断言存在    ${绑定收费标准成功}
    等待element元素可见    ${绑定收费标准确定}
    sleep    2
    Click button    ${绑定收费标准确定}
    sleep    1
    Click Element    ${添加绑定回第一步}
    sleep    1
    Click Element    ${绑定下一步}
    等待element元素可见    ${绑定下一步}
    sleep    2
    Click Element    ${绑定下一步}
    等待element元素可见    ${确认添加页面下一步}
    sleep    2
    Click Element    ${确认添加页面下一步}
    等待element元素可见    ${添加绑定确认添加}
    sleep    2
    Click button    ${添加绑定确认添加}
    sleep    3
    断言存在    ${绑定收费标准成功}
    等待element元素可见    ${绑定收费标准确定}
    sleep    2
    Click button    ${绑定收费标准确定}
    等待element元素可见    ${添加绑定关闭}
    sleep    2
    Click Element    ${添加绑定关闭}

批量修改
    Click Element    ${批量修改按钮}
    sleep    2
    Click Element    ${批量修改选择管理区下拉框}
    sleep    2
    等待element元素可见    //select[@id='BatchEditRegionId']/option[@value='${GLQID}']
    Click Element    //select[@id='BatchEditRegionId']/option[@value='${GLQID}']    \    \    #选择管理区
    sleep    2
    Click Element    ${批量修改搜索房间}
    等待element元素可见    //li[@id='${GLQLYID}']//i[@class='jstree-icon jstree-checkbox']
    sleep    3
    Click Element    //li[@id='${GLQLYID}']//i[@class='jstree-icon jstree-checkbox']
    sleep    2
    Click Element    ${批量修改下一步}
    sleep    2
    Click Element    ${勾选修改开始日期}
    sleep    1
    Click Button    ${批量修改开始日期选择器}
    sleep    1
    Click Element    ${选择修改收费开始日期}
    sleep    1
    Click Element    ${确认修改页面下一步}
    sleep    1
    Click Button    ${修改绑定确认修改}
    sleep    2
    断言存在    ${批量修改收费标准成功}
    sleep    2
    Click Element    ${批量修改关闭}

批量解除
    Click Element    ${批量解除按钮}
    sleep    2
    Click Element    ${批量解除选择管理区下拉框}
    sleep    2
    等待element元素可见    //select[@id='CancelRegionId']/option[@value='${GLQID}']
    Click Element    //select[@id='CancelRegionId']/option[@value='${GLQID}']    \    \    #选择管理区
    sleep    2
    Click Element    ${批量解除搜索房间}
    等待element元素可见    //li[@id='${GLQLYID}']//i[@class='jstree-icon jstree-checkbox']
    sleep    3
    Click Element    //li[@id='${GLQLYID}']//i[@class='jstree-icon jstree-checkbox']
    sleep    2
    Click Element    ${批量解除下一步}
    sleep    2
    Click Element    ${批量解除确认下一步}
    sleep    1
    Click Button    ${修改解除确认解除}
    sleep    2
    断言存在    ${批量解除成功}
    sleep    2
    Click Element    ${批量解除关闭}

查询
    数据库查询操作    ${guanliquID}    #查询管理区
    ${GLQID}    Set Variable    ${var[0][0]}
    Set Suite Variable    ${GLQID}
    LOG    ${GLQID}
    数据库查询操作    ${GLQLYID}    #查询管理楼宇区
    ${GLQLYID}    Set Variable    ${var[0][0]}
    Set Suite Variable    ${GLQLYID}
    LOG    ${GLQLYID}
    数据库查询操作    select top 1 code,id from OrganizationItem where parentid=${GLQLYID}     #查询绑定收费标准的房间
    ${BZFJCODE1}    Set Variable    ${var[0][0]}
    ${BZFJID1}    Set Variable    ${var[0][1]}
    Set Suite Variable    ${BZFJCODE1}
    Set Suite Variable    ${BZFJID1}
    LOG    ${BZFJCODE1}
    LOG    ${BZFJID1}

搜索并编辑房间收费标准
    [Documentation]    Wait Until Element Is Visible //a[@id='${BZFJID1} _anchor']
    Input Text    ${搜索房间代码}    ${BZFJCODE1}
    等待element元素可见    //a[@id='${BZFJID1}_anchor']
    sleep    2
    click element    //a[@id='${BZFJID1}_anchor']
    sleep    2
    等待element元素可见    ${编辑绑定收费标准}
    click element    ${编辑绑定收费标准}
    sleep    2
    等待element元素可见    ${单击编辑保存}
    click element    ${勾选修改开始时间}
    等待element元素可见    ${单击编辑开始时间输入框}
    sleep    3
    click element    ${单击编辑开始时间输入框}
    等待element元素可见    ${选择编辑开始日期}
    sleep    3
    click element    ${选择编辑开始日期}
    sleep    1
    click button    ${单击编辑保存}
    sleep    1
    等待button元素可见    ${确认编辑}
    click button    ${确认编辑}
    sleep    1

解除单个房间收费标准
    等待element元素可见    ${解除绑定按钮}
    sleep    1
    click element    ${解除绑定按钮}
    等待element元素可见    ${确认解除}
    sleep    1
    click element    ${确认解除}
    sleep    1
