*** Settings ***
Library           Selenium2Library
Library           DateTime
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用减免统计Xpath.py

*** Keywords ***
费用减免汇总_资源树筛选
    等待element元素可见    ${费用减免汇总_资源树搜索框}
    sleep    0.5
    Input Text    ${费用减免汇总_资源树搜索框}    123
    sleep    5

费用减免汇总_按指定收费项目筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${费用减免汇总_收费项目}
    sleep    0.5
    click element    ${费用减免汇总_收费项目}
    sleep    0.5
    click element    ${费用减免汇总_选择收费项目}
    sleep    0.5
    等待element元素可见    ${费用减免汇总_表格}
    sleep    2

费用减免汇总_按减免时段筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${费用减免汇总_减免时段开始日期}
    sleep    0.5
    ${date}    获取当前年月日
    ${date2}    获取一年前的年月日
    input text    ${费用减免汇总_减免时段开始日期}    ${date2}
    sleep    0.5
    input text    ${费用减免汇总_减免时段结束日期}    ${date}
    sleep    0.5
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${费用减免汇总_表格}
    sleep    2

费用减免汇总_导出
    等待元素可用    ${费用减免汇总_导出}
    sleep    0.5
    click button    ${费用减免汇总_导出}
    sleep    2

费用减免汇总_查看客户详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${费用减免汇总_减免时段开始日期}
    sleep    0.5
    ${date}    获取当前年月日
    ${date2}    获取一年前的年月日
    input text    ${费用减免汇总_减免时段开始日期}    ${date2}
    sleep    0.5
    input text    ${费用减免汇总_减免时段结束日期}    ${date}
    sleep    0.5
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${费用减免汇总_查看客户}
    sleep    0.5
    click element    ${费用减免汇总_查看客户}
    sleep    3
    断言存在    ${费用减免汇总_客户详情页面验证}

费用减免汇总_查看资源详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${费用减免汇总_减免时段开始日期}
    ${date}    获取当前年月日
    ${date2}    获取一年前的年月日
    input text    ${费用减免汇总_减免时段开始日期}    ${date2}
    sleep    0.5
    input text    ${费用减免汇总_减免时段结束日期}    ${date}
    sleep    0.5
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${费用减免汇总_查看资源}
    sleep    0.5
    click element    ${费用减免汇总_查看资源}
    sleep    3
    断言存在    ${费用减免汇总_资源详情页面验证}
