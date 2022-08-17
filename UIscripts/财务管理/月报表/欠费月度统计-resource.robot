*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/月报表Xpath.py

*** Keywords ***
欠费月度统计_资源树筛选
    等待element元素可见    ${欠费月度统计_资源树搜索框}
    sleep    0.5
    Input Text    ${欠费月度统计_资源树搜索框}    123
    sleep    5

欠费月度统计_按指定收费项目筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_指定收费项目}
    sleep    0.5
    click element    ${欠费月度统计_选择一个收费项目}
    sleep    0.5
    等待元素可用    ${欠费月度统计_搜索按钮}
    sleep    0.5
    click button    ${欠费月度统计_搜索按钮}

欠费月度统计_按费用应收时段筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${欠费月度统计_费用应收日期开始}
    input text    ${欠费月度统计_费用应收日期开始}    2019-11-01
    sleep    0.5
    input text    ${欠费月度统计_费用应收日期结束}    2019-11-30
    sleep    0.5
    click element    ${欠费月度统计_指定收费项目}
    sleep    0.5
    click element    ${欠费月度统计_选择一个收费项目}
    sleep    0.5
    等待元素可用    ${欠费月度统计_搜索按钮}
    sleep    0.5
    click button    ${欠费月度统计_搜索按钮}

欠费月度统计_欠费金额跳转明细
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click button    ${欠费月度统计_搜索按钮}
	sleep    1
    等待element元素可见    ${欠费月度统计_所有管理区展开}
    sleep    2
    click element    ${欠费月度统计_所有管理区展开}
    sleep    2
    click element    ${欠费月度统计_所有欠费金额}
    sleep    1

欠费月度统计_汇总到楼宇
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_汇总到楼宇勾选框}
    sleep    0.5
    等待element元素可见    ${欠费月度统计_搜索按钮}
	sleep    1
    click button    ${欠费月度统计_搜索按钮}
	sleep    1

欠费月度统计_汇总到楼宇导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_汇总到楼宇勾选框}
    sleep    0.5
    click button    ${欠费月度统计_搜索按钮}
	sleep    2
    等待元素可用    ${欠费月度统计_汇总导出按钮}
    sleep    2
    click button    ${欠费月度统计_汇总导出按钮}
	sleep    0.5

欠费月度统计_汇总到收费项目
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_汇总到收费项目勾选框}
    sleep    0.5
	等待element元素可见    ${欠费月度统计_搜索按钮}
	sleep    1
    click button    ${欠费月度统计_搜索按钮}

欠费月度统计_汇总到收费项目导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_汇总到收费项目勾选框}
    sleep    1
    click button    ${欠费月度统计_搜索按钮}
	sleep    2
    等待元素可用    ${欠费月度统计_汇总导出按钮}
    sleep    0.5
    click button    ${欠费月度统计_汇总导出按钮}

欠费月度统计_客户资源汇总搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_客户资源汇总Tab}
    sleep    3

欠费月度统计_客户资源汇总导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_客户资源汇总Tab}
    sleep    3
    等待元素可用    ${欠费月度统计_客户资源汇总导出按钮}
    sleep    0.5
    click button    ${欠费月度统计_客户资源汇总导出按钮}

欠费月度统计_客户资源汇总查看资源详情
	选择资源树上的楼宇
    click element    ${欠费月度统计_客户资源汇总Tab}
    sleep    3
    等待element元素可见    ${欠费月度统计_客户资源汇总查看房间信息}
    sleep    0.5
    click element    ${欠费月度统计_客户资源汇总查看房间信息}
    sleep    2
    断言存在    ${欠费月度统计_资源详情页面}

欠费月度统计_客户资源汇总查看客户详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_客户资源汇总Tab}
    sleep    3
    等待element元素可见    ${欠费月度统计_客户资源汇总查看客户信息}
    sleep    0.5
    click element    ${欠费月度统计_客户资源汇总查看客户信息}
    sleep    2
    断言存在    ${欠费月度统计_客户详情页面客户名称}

欠费月度统计_客户资源明细搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_客户资源明细Tab}
    sleep    3

欠费月度统计_客户资源明细导出欠费明细
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_客户资源明细Tab}
    sleep    3
    等待元素可用    ${欠费月度统计_导出欠费明细按钮}
    sleep    0.5
    click button    ${欠费月度统计_导出欠费明细按钮}

欠费月度统计_客户资源明细导出欠费汇总
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_客户资源明细Tab}
    sleep    3
    等待元素可用    ${欠费月度统计_导出欠费汇总按钮}
    sleep    0.5
    click button    ${欠费月度统计_导出欠费汇总按钮}

欠费月度统计_客户资源明细查看资源详情
    选择资源树上的楼宇
    click element    ${欠费月度统计_客户资源明细Tab}
    sleep    3
    等待element元素可见    ${欠费月度统计_客户资源明细查看房间信息}
    sleep    0.5
    click element    ${欠费月度统计_客户资源明细查看房间信息}
    sleep    2
    断言存在    ${欠费月度统计_资源详情页面}

欠费月度统计_客户资源明细查看客户详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_客户资源明细Tab}
    sleep    3
    等待element元素可见    ${欠费月度统计_客户资源明细查看客户信息}
    sleep    0.5
    click element    ${欠费月度统计_客户资源明细查看客户信息}
    sleep    2
    断言存在    ${欠费月度统计_客户详情页面客户名称}

欠费月度统计_清单明细导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${欠费月度统计_清单明细Tab}
    sleep    3
    等待元素可用    ${欠费月度统计_清单明细导出按钮}
    sleep    0.5
    click button    ${欠费月度统计_清单明细导出按钮}

选择资源树上的楼宇
	数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/i
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/i
    sleep    0.5
    数据库查询操作    ${GLQLYID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5