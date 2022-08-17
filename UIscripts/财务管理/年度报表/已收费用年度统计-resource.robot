*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/年度报表Xpath.py

*** Keywords ***
已收费用年度统计_按应收时间段查询
    等待element元素可见    ${已收费用年度统计_已收费用时间段选择框}
    sleep    0.5
    click element    ${已收费用年度统计_已收费用时间段选择框}
    sleep    0.5
    click element    ${已收费用年度统计_已收费用时间段选择上个月}
    sleep    5

已收费用年度统计_汇总到楼宇
    等待element元素可见    ${已收费用年度统计_已收费用时间段选择框}
    sleep    0.5
    click element    ${已收费用年度统计_汇总到楼宇勾选框}
    sleep    0.5
	等待element元素可见    ${已收费用年度统计_所有管理区展开}
    sleep    0.5
    click element    ${已收费用年度统计_所有管理区展开}
    sleep    0.5
    click element    ${已收费用年度统计_所有楼宇展开}

已收费用年度统计_汇总到收费项目
    等待element元素可见    ${已收费用年度统计_已收费用时间段选择框}
    sleep    0.5
    click element    ${已收费用年度统计_汇总到收费项目勾选框}
    sleep    0.5
	等待element元素可见    ${已收费用年度统计_所有月份展开}
    sleep    0.5
    click element    ${已收费用年度统计_所有月份展开}
    sleep    0.5
    click element    ${已收费用年度统计_所有月份展开}
    sleep    0.5
    click element    ${已收费用年度统计_所有项目展开}
    sleep    1

已收费用年度统计_导出统计数据
    等待元素可用    ${已收费用年度统计_导出按钮}
    sleep    0.5
    click button    ${已收费用年度统计_导出按钮}
    sleep    1

已收费用年度统计_点击金额跳转
    等待element元素可见    ${已收费用年度统计_已收费用时间段选择框}
    sleep    0.5
    click element    ${已收费用年度统计_汇总到楼宇勾选框}
    sleep    0.5
    click element    ${已收费用年度统计_所有管理区展开}
    sleep    0.5
    click element    ${已收费用年度统计_所有楼宇展开}
    sleep    0.5
    等待element元素可见    ${已收费用年度统计_一个列表金额}
    sleep    0.5
    click element    ${已收费用年度统计_一个列表金额}
    sleep    0.5
    等待element元素可见    ${已收费用年度统计_跳转页面title验证}
    sleep    2
    断言值包含    ${已收费用年度统计_跳转页面title验证}		已收费用月统计
