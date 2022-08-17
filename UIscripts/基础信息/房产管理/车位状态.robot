*** Settings ***
Resource          报表管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
车位列表查询
    登录    ${车位状态统计表}
    车位列表查询
    [Teardown]    关闭浏览器
	
车位列表_导出Excel重置
    登录    ${车位状态统计表}
    车位列表_导出Excel重置
    [Teardown]    关闭浏览器
	
车位列表_明细查询
    登录    ${车位状态统计表}
    车位列表_明细查询
    [Teardown]    关闭浏览器
	
车位列表_明细查询_导出
    登录    ${车位状态统计表}
    车位列表_明细查询_导出
    [Teardown]    关闭浏览器

	
	

