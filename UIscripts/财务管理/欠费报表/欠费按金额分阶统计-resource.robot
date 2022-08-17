*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/欠费报表Xpath.py

*** Keywords ***
欠费按金额分阶统计_搜索
    等待element元素可见    ${欠费按金额分阶统计_费用时段}
    sleep    0.5
    click element    ${欠费按金额分阶统计_费用时段}
    sleep    0.5
    click element    ${欠费按金额分阶统计_费用时段_开始}
    sleep    0.5
    click element    ${欠费按金额分阶统计_费用时段_结束}
    sleep    0.5
    click element    ${欠费按金额分阶统计_管理区}
    sleep    0.5
    click element    ${欠费按金额分阶统计_选择管理区}
    sleep    0.5
    click element    ${欠费按金额分阶统计_收费项目}
    sleep    0.5
    click element    ${欠费按金额分阶统计_选择收费项目}
    sleep    0.5
    click element    ${欠费按金额分阶统计_楼宇停车场}
    sleep    0.5
    click element    ${欠费按金额分阶统计_选择楼宇停车场}
    sleep    0.5
    click button    ${欠费按金额分阶统计_搜索}
    sleep    0.5
    等待element元素可见    ${欠费按金额分阶统计_表格}
    sleep    0.5
    等待元素可用    ${欠费按金额分阶统计_重置}
    sleep    0.5
    click button    ${欠费按金额分阶统计_重置}
    sleep    2

欠费按金额分阶统计_导出
	等待element元素可见    ${欠费按金额分阶统计_费用时段}
    sleep    0.5
    click element    ${欠费按金额分阶统计_费用时段}
    sleep    0.5
    click element    ${欠费按金额分阶统计_费用时段_开始}
    sleep    0.5
    click element    ${欠费按金额分阶统计_费用时段_结束}
    sleep    0.5
    click element    ${欠费按金额分阶统计_管理区}
    sleep    0.5
    click element    ${欠费按金额分阶统计_选择管理区}
    sleep    0.5
	click button    ${欠费按金额分阶统计_搜索}
	sleep    0.5
    等待元素可用    ${欠费按金额分阶统计_导出}
    sleep    0.5
    click button    ${欠费按金额分阶统计_导出}
    sleep    2
