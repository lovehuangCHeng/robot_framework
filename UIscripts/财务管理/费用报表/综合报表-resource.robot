*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
综合报表_资源树筛选
    等待element元素可见    ${综合报表_资源树搜索框}
    sleep    0.5
    Input Text    ${综合报表_资源树搜索框}    123
    sleep    5

综合报表_汇总_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${综合报表_指定收费项目}
    sleep    0.5
    click element    ${综合报表_指定收费项目}
    sleep    0.5
    click element    ${综合报表_选择一个收费项目}
    sleep    0.5
    input text    ${综合报表_费用应收日期开始}    2019-06-01
    sleep    0.5
    input text    ${综合报表_费用应收日期结束}    2019-12-01
    sleep    0.5
    click element    ${综合报表_是否包含滞纳金}
    sleep    0.5
    click element    ${综合报表_汇总_显示管理区}
    sleep    0.5
    click element    ${综合报表_汇总_显示楼宇}
    sleep    0.5
    click element    ${综合报表_汇总_显示资源}
    sleep    0.5
    click element    ${综合报表_汇总_显示收费项目}
    sleep    0.5
    click element    ${综合报表_汇总_显示月份}
    sleep    0.5
    click element    ${综合报表_汇总_显示年份}
    sleep    0.5
    click button    ${综合报表_汇总_确定}
    sleep    3

综合报表_汇总_导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${综合报表_费用应收日期开始}
    sleep    0.5
    input text    ${综合报表_费用应收日期开始}    2019-01-01
    sleep    0.5
    input text    ${综合报表_费用应收日期结束}    2019-12-01
    sleep    0.5
    click button    ${综合报表_汇总_确定}
    sleep    0.5
    断言存在    ${综合报表_汇总_导出}

综合报表_按年度汇总_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${综合报表_按年度汇总Tab}
    sleep    0.5
    click element    ${综合报表_按年度汇总Tab}
    sleep    0.5
    input text    ${综合报表_费用应收日期开始}    2019-06-01
    sleep    0.5
    input text    ${综合报表_费用应收日期结束}    2019-12-01
    sleep    0.5
    click element    ${综合报表_按年度汇总_显示管理区}
    sleep    0.5
    click element    ${综合报表_按年度汇总_显示楼宇}
    sleep    0.5
    click element    ${综合报表_按年度汇总_显示资源}
    sleep    0.5
    click element    ${综合报表_按年度汇总_显示收费项目}
    sleep    0.5
    click button    ${综合报表_按年度汇总_确定}
    sleep    3

综合报表_按月度汇总_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${综合报表_按月度汇总Tab}
    sleep    0.5
    click element    ${综合报表_按月度汇总Tab}
    sleep    0.5
    input text    ${综合报表_费用应收日期开始}    2019-06-01
    sleep    0.5
    input text    ${综合报表_费用应收日期结束}    2019-12-01
    sleep    0.5
    click element    ${综合报表_按月度汇总_显示管理区}
    sleep    0.5
    click element    ${综合报表_按月度汇总_显示楼宇}
    sleep    0.5
    click element    ${综合报表_按月度汇总_显示资源}
    sleep    0.5
    click element    ${综合报表_按月度汇总_显示收费项目}
    sleep    0.5
    click button    ${综合报表_按月度汇总_确定按钮}
    sleep    3

综合报表_按收费项目汇总_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${综合报表_按收费项目汇总Tab}
    sleep    0.5
    click element    ${综合报表_按收费项目汇总Tab}
    sleep    0.5
    input text    ${综合报表_费用应收日期开始}    2019-06-01
    sleep    0.5
    input text    ${综合报表_费用应收日期结束}    2019-12-01
    sleep    0.5
    click element    ${综合报表_按收费项目汇总_显示管理区}
    sleep    0.5
    click element    ${综合报表_按收费项目汇总_显示楼宇}
    sleep    0.5
    click element    ${综合报表_按收费项目汇总_显示资源}
    sleep    0.5
    click element    ${综合报表_按收费项目汇总_月份}
    sleep    0.5
    click button    ${综合报表_按收费项目汇总_确定}
    sleep    3

综合报表_清单明细_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${综合报表_清单明细Tab}
    sleep    0.5
    click element    ${综合报表_清单明细Tab}
    sleep    0.5
    input text    ${综合报表_费用应收日期开始}    2019-06-01
    sleep    0.5
    input text    ${综合报表_费用应收日期结束}    2019-12-01
    sleep    3

