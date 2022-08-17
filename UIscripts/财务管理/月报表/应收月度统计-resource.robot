*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/月报表Xpath.py

*** Keywords ***
应收月度统计_资源树筛选
    等待element元素可见    ${应收月度统计_资源树搜索框}
    sleep    0.5
    Input Text    ${应收月度统计_资源树搜索框}    123
    sleep    5

应收月度统计_按年度月份筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${应收月度统计_选择年份下拉框}
    sleep    0.5
    click element    ${应收月度统计_选择年份}
    sleep    0.5
    click element    ${应收月度统计_选择月份}
    sleep    0.5
    click button    ${应收月度统计_搜索按钮}
    sleep    3

应收月度统计_查看资源详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click button    ${应收月度统计_搜索按钮}
    等待element元素可见    ${应收月度统计_一条数据的资源代码}
    sleep    0.5
    click element    ${应收月度统计_一条数据的资源代码}
    sleep    2
    断言存在    ${应收月度统计_资源详情页面}

应收月度统计_查看客户详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click button    ${应收月度统计_搜索按钮}
    等待element元素可见    ${应收月度统计_一条数据的客户}
    sleep    0.5
    click element    ${应收月度统计_一条数据的客户}
    sleep    2
    断言存在    ${应收月度统计_客户详情页面客户名称}

应收月度统计_按指定收费项目筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${应收月度统计_指定收费项目}
    sleep    0.5
    click element    ${应收月度统计_选择一个收费项目}
    sleep    0.5
    click button    ${应收月度统计_搜索按钮}

应收月度统计_汇总到楼宇
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${应收月度统计_汇总到楼宇勾选框}
    sleep    0.5
    click button    ${应收月度统计_搜索按钮}
    等待element元素可见    ${应收月度统计_所有管理区展开}
    click element    ${应收月度统计_所有管理区展开}
    sleep    0.5
    click element    ${应收月度统计_所有楼宇展开}

应收月度统计_汇总到收费项目
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${应收月度统计_汇总到收费项目勾选框}
    sleep    0.5
    click button    ${应收月度统计_搜索按钮}
    等待element元素可见    ${应收月度统计_所有应收展开}
    click element    ${应收月度统计_所有应收展开}
    sleep    0.5
    click element    ${应收月度统计_所有应收展开}
    sleep    0.5
    click element    ${应收月度统计_期初欠费所有项目展开}
    sleep    0.5
    click element    ${应收月度统计_期初欠费所有项目展开}
    sleep    0.5
    等待element元素可见    ${应收月度统计_本期应收所有项目展开}
    sleep    0.5
    click element    ${应收月度统计_本期应收所有项目展开}

应收月度统计_导出统计数据
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click button    ${应收月度统计_搜索按钮}
    等待元素可用    ${应收月度统计_导出Excel按钮}
    sleep    3
    click button    ${应收月度统计_导出Excel按钮}
