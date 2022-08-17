*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/基础信息/房产档案.py
Resource          ../../通用方法.robot

*** Keywords ***
微信按房间查询绑定数据
    等待element元素可见    ${微信绑定_管理区选择框}
    sleep    1
    click element    ${微信绑定_管理区选择框}
    sleep    1
	等待element元素可见    ${微信绑定_选择管理区数据}
    sleep    1
    click element    ${微信绑定_选择管理区数据}
    sleep    1
	等待element元素可见    ${微信绑定_查询}
    sleep    1
	click element    ${微信绑定_查询}
    sleep    1
	
微信按房间查询绑定数据_导出_重置
	微信按房间查询绑定数据
	导出Excel重置-微信
	
微信按房间查询绑定数据_查看绑定明细
	微信按房间查询绑定数据
	等待element元素可见    ${查看绑定信息}
    sleep    1
	click element    ${查看绑定信息}
    sleep    1
	等待element元素可见    ${微信绑定_详情页面_房间title}
    sleep    1
	等待element元素可见    ${微信绑定_关闭详情页面}
    sleep    1
	click element    ${微信绑定_关闭详情页面}
    sleep    1
	
微信按客户查询绑定数据
	等待element元素可见    ${按客户统计tab}
    sleep    1
    click element    ${按客户统计tab}
    sleep    1
    等待element元素可见    ${微信绑定_管理区选择框_客户}
    sleep    1
    click element    ${微信绑定_管理区选择框_客户}
    sleep    1
	等待element元素可见    ${微信绑定_选择管理区数据}
    sleep    1
    click element    ${微信绑定_选择管理区数据}
    sleep    1
	等待element元素可见    ${微信绑定_客户查询}
    sleep    1
	click element    ${微信绑定_客户查询}
    sleep    1
	
微信按客户查询绑定数据_查看绑定明细
	微信按客户查询绑定数据
	等待element元素可见    ${微信绑定_查看绑定信息_客户}
    sleep    1
	click element    ${微信绑定_查看绑定信息_客户}
    sleep    1
	等待element元素可见    ${微信绑定_详情页面_客户title}
    sleep    1
	等待element元素可见    ${微信绑定_关闭详情页面}
    sleep    1
	click element    ${微信绑定_关闭详情页面}
    sleep    1
	
导出Excel重置-微信
	等待element元素可见    ${微信绑定_导出Excel}
    sleep    1
	click element    ${微信绑定_导出Excel}
    sleep    1
	等待element元素可见    ${微信绑定_重置}
    sleep    1
	click element    ${微信绑定_重置}
    sleep    1
	
导出Excel重置
	等待element元素可见    ${车位状态_导出Excel}
    sleep    1
	click element    ${车位状态_导出Excel}
    sleep    1
	等待element元素可见    ${微信绑定_重置}
    sleep    1
	click element    ${微信绑定_重置}
    sleep    1

车位列表查询
	等待element元素可见    ${车位状态_选择管理区}
    sleep    1
    click element    ${车位状态_选择管理区}
    sleep    1
	搜索输入中的管理区
    sleep    1
	等待element元素可见    ${车位状态_查询}
    sleep    1
	click element    ${车位状态_查询}
    sleep    1
	
车位列表_导出Excel重置
	车位列表查询
	导出Excel重置
	
	
车位列表_明细查询
	车位列表查询
	等待element元素可见    ${车位状态_合计汇总超链接}
    sleep    1
	click element    ${车位状态_合计汇总超链接}
    sleep    1
	
车位列表_明细查询_导出
	车位列表_明细查询
	等待element元素可见    ${车位状态_明细页面title}
    sleep    1
	等待element元素可见    ${车位状态_明细页面_导出}
    sleep    1
	click element    ${车位状态_明细页面_导出}
    sleep    1
	
房间业主列表查询
	等待element元素可见    ${房间绑定_选择管理区}
    sleep    1
    click element    ${房间绑定_选择管理区}
    sleep    1
	搜索输入中的管理区
    sleep    1
	click element     ${房间绑定_楼宇}
    sleep    1
	click element    ${房间绑定_楼宇数据}
    sleep    1
	等待element元素可见    ${房间绑定_查询}
    sleep    1
    click element    ${房间绑定_查询}
    sleep    1
	
	
	
房间业主列表导出Excel重置
	房间业主列表查询
	导出Excel重置
	
房间业主列表_查询明细
	房间业主列表查询
	等待element元素可见    ${房间绑定_合计汇总超链接}
    sleep    1
    click element    ${房间绑定_合计汇总超链接}
    sleep    1
	
房间业主列表_明细导出
	房间业主列表_查询明细
	等待element元素可见    ${房间绑定_明细页面title}
    sleep    1
	等待element元素可见    ${房间绑定_明细页面_导出}
    sleep    1
    click element    ${房间绑定_明细页面_导出}
    sleep    1
	
	
	
	
