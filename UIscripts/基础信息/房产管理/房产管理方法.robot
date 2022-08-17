*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/基础信息/房产档案.py
Resource          ../../通用方法.robot

*** Keywords ***
管理区搜索
    数据库查询操作    ${guanliqu}
    ${GLQ}    Set Variable    ${var[0][0]}
    sleep    1
    Input Text    ${搜索框}    ${GLQ}
    sleep    1
    等待element元素可见    ${搜索按钮}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1
    Click Element    ${管理区查看}
    sleep    1

资源树搜索数据
    [Arguments]    ${name}
	等待element元素可见    ${物业资源搜索框}
    sleep    1
    Input Text    ${物业资源搜索框}    ${name}
    sleep    1
    Click Element    ${物业资源搜索}
    sleep    1
    Click Element    ${资源树管理区}
    sleep    1

新建分组
    [Arguments]    ${name}
	等待element元素可见    ${管理区添加下级}
    sleep    1
    Click Element    ${管理区添加下级}
    sleep    1
    Click Element    ${添加分组}
    sleep    1
    Input Text    ${分组名称}    ${name}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

编辑分组
    [Arguments]    ${name}
    资源树搜索数据    ${name}
	等待element元素可见    ${分组编辑}
    sleep    1
    Click Element    ${分组编辑}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

删除分组
    [Arguments]    ${name}
    资源树搜索数据    ${name}
    Click Element    ${分组删除}
    sleep    1
	等待element元素可见    ${确认删除}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
	

分组变量
    ${testfz}    按时间自定义变量    高层分组
	Set Suite Variable    ${testfz}
    [Return]    ${testfz}
	
楼宇变量
    ${testly}    按时间自定义变量    楼栋
	Set Suite Variable    ${testly}
    [Return]    ${testly}
	
停车场变量
    ${testtcc}    按时间自定义变量    停车场
	Set Suite Variable    ${testtcc}
    [Return]    ${testtcc}
	
单元变量
    ${testdy}    按时间自定义变量    单元
	Set Suite Variable    ${testdy}
    [Return]    ${testdy}	

房间变量
    ${testfj}    按时间自定义变量    UItest
	Set Suite Variable    ${testfj}
    [Return]    ${testfj}	


车位变量
    ${testcw}    按时间自定义变量    UIcw
	Set Suite Variable    ${testcw}
    [Return]    ${testcw}

广告位变量
    ${testggw}    按时间自定义变量    UIggw
	Set Suite Variable    ${testggw}
    [Return]    ${testggw}	
	
切换到楼宇标签
	等待元素可用	${楼宇tab}
	sleep    1
    Click Element    ${楼宇tab}
    sleep    1

新建楼宇
    [Arguments]    ${name}
	等待元素可用	${管理区添加下级}
	sleep    1
    Click Element    ${管理区添加下级}
    sleep    1
    Click Element    ${添加楼栋}
    sleep    1
    Input Text    ${楼宇名称}    ${name}
    sleep    1
    Input Text    ${楼宇序号}    123456
    sleep    1
    Click Element    ${分组确定}
    sleep    1

搜索楼宇
    [Arguments]    ${name}
    切换到楼宇标签
	等待元素可用	${搜索框}
	sleep    1
    Input Text    ${搜索框}    ${name}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

编辑楼宇
    切换到楼宇标签
    sleep    1
	等待元素可用	${楼宇编辑}
	sleep    1
    Click Element    ${楼宇编辑}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

查看楼宇
    切换到楼宇标签
	sleep	1
	等待元素可用	${楼宇查看}
	sleep    1
    Click Element    ${楼宇查看}
    sleep    1
    Click Element    ${楼宇添加下级}
    sleep    1

删除楼宇
	[Arguments]    ${name}
    切换到楼宇标签
    搜索楼宇    ${name}
    sleep    1
	等待元素可用	${楼宇删除}
	sleep    1
    Click Element    ${楼宇删除}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
	断言值包含    ${删除成功断言}	删除成功
	sleep    1

楼宇导出
    切换到楼宇标签
    Click Element    ${导出Excel}
    sleep    1

切换到停车场标签
	等待元素可用	${停车场tab}
	sleep    1
    Click Element    ${停车场tab}
    sleep    1

停车场新建
    [Arguments]    ${name}
    管理区搜索
	等待元素可用	${管理区添加下级}
	sleep    1
    Click Element    ${管理区添加下级}
    sleep    1
    Click Element    ${添加停车场}
    sleep    1
    Input Text    ${停车场名称}    ${name}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

停车场编辑
    切换到停车场标签
    sleep    1
	等待元素可用	${停车场编辑}
	sleep    1
    Click Element    ${停车场编辑}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

停车场搜索
    [Arguments]    ${name}
    切换到停车场标签
	等待元素可用	${搜索框}
	sleep    1
    Input Text    ${搜索框}    ${name}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

停车场查看
    切换到停车场标签
	等待元素可用	${搜索框}
	sleep    1
    sleep    1
    Click Element    ${停车场查看}
    sleep    1

停车场删除
    [Arguments]    ${name}
    停车场搜索    ${name}
    sleep    1
	等待元素可用	${停车场删除}
	sleep    1
    Click Element    ${停车场删除}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

停车场导出
    切换到停车场标签
    Click Element    ${导出Excel}
    sleep    1

单元新建
    [Arguments]    ${name}
    查看楼宇
    sleep    1
    Click Element    ${添加单元}
    sleep    1
    Input Text    ${单元名称}    ${name}
    sleep    1
    Input Text    ${单元序号}    123456
    sleep    1
    Click Element    ${分组确定}
    sleep    1

单元编辑
    [Arguments]    ${name}
    资源树搜索数据    ${name}
	等待元素可用	${编辑单元}
	sleep    1
    Click Element    ${编辑单元}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

单元删除
    [Arguments]    ${name}
    资源树搜索数据    ${name}
	等待元素可用	${删除单元}
	sleep    1
    Click Element    ${删除单元}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
	断言值包含    ${删除成功断言}	删除成功
	sleep    1

切换到房间标签
	等待元素可用	${房间tab}
    Click Element    ${房间tab}
    sleep    1

房间新建
    [Arguments]    ${code}
    查看楼宇
    sleep    1
	等待元素可用	${添加房间}
    Click Element    ${添加房间}
    sleep    1
    Input Text    ${房间楼层}    10
    sleep    1
    Input Text    ${房间序号}    123456
    sleep    1
    Input Text    ${房间代码}    ${code}
    sleep    1
    Input Text    ${房间建筑面积}    20
    sleep    1
    Click Element    ${房间类型}
    sleep    1
    Click Element    ${办公}
    sleep    1
    Click Element    ${房间状态}
    sleep    1
    Click Element    ${交房}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

房间编辑
    切换到房间标签
	等待元素可用	${房间编辑}
	sleep    1
    Click Element    ${房间编辑}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

房间查看
    切换到房间标签
	等待元素可用	${房间查看}
	sleep    1
    Click Element    ${房间查看}
    sleep    1

房间业主
    房间查看
    Click Element    ${业主}
    sleep    1
    Click Element    ${业主管理}
    sleep    1
    Click Element    ${分组取消}
    sleep    1

房间成员
    房间查看
    Click Element    ${当前居住成员}
    sleep    1
    Click Element    ${业主管理}
    sleep    1
    Click Element    ${分组取消}
    sleep    1

房间搜索
    [Arguments]    ${name}
    切换到房间标签
	等待元素可用	${搜索框}
	sleep    1
    Input Text    ${搜索框}    ${name}
    sleep    1
    等待element元素可见    ${搜索按钮}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

房间删除
    [Arguments]    ${name}
    房间搜索    ${name}
	sleep    1
    等待元素可用	${房间删除}
	sleep    2
    Click Element    ${房间删除}
    sleep    1
	等待元素可用	${确认删除}
	sleep    1
    Click Element    ${确认删除}
    sleep    1
	
房间导出
    切换到房间标签
    Click Element    ${导出Excel}
    sleep    1

切换到车位标签
	等待元素可用	${车位tab}
    Click Element    ${车位tab}
    sleep    1

车位新建
    [Arguments]    ${code}
    停车场查看
    Click Element    ${添加车位}
    sleep    1
    Input Text    ${车位号}    ${code}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

车位编辑
    切换到车位标签
	等待元素可用	${车位编辑}
	sleep    1
    Click Element    ${车位编辑}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

车位查看
    切换到车位标签
	等待元素可用	${车位查看}
	sleep    1
    Click Element    ${车位查看}
    sleep    1
    Click Element    ${查看页面关闭按钮}
    sleep    1

车位搜索
    [Arguments]    ${name}
    切换到车位标签
	等待元素可用	${搜索框}
	sleep    1
    Input Text    ${搜索框}    ${name}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

车位删除
    [Arguments]    ${name}
    车位搜索    ${name}
    Click Element    ${车位删除}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
	断言值包含    ${删除成功断言}	删除成功
	sleep    1

车位导出
    切换到车位标签
    Click Element    ${导出Excel}
    sleep    1

切换到广告位标签
	等待元素可用	${广告位tab}
    Click Element    ${广告位tab}
    sleep    1

广告位新建
    [Arguments]    ${code}
    查看楼宇
    Click Element    ${添加广告位}
    sleep    1
    Input Text    ${广告位号}    ${code}
    sleep    1
    Input Text    ${广告位楼层}    10
    sleep    1
    Click Element    ${分组确定}
    sleep    1

广告位编辑
    切换到广告位标签
	等待元素可用	${编辑广告位}
	sleep    1
    Click Element    ${编辑广告位}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

广告位搜索
    [Arguments]    ${name}
    切换到广告位标签
	等待元素可用	${搜索框}
	sleep    1
    Input Text    ${搜索框}    ${name}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

广告位删除
    [Arguments]    ${name}
    广告位搜索    ${name}
    Click Element    ${删除广告位}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
	断言值包含    ${删除成功断言}	删除成功
	sleep    1

房产状态搜索
    [Arguments]    ${name}
	等待元素可用	${房产状态输入框}
	sleep    1
    Input Text    ${房产状态输入框}    ${name}
    sleep    1
    Click Element    ${房产状态输入框搜索}
    sleep    1

房产状态高级搜索
	等待元素可用	${高级向下展开按钮}
	sleep    1
    Click Element    ${高级向下展开按钮}
    sleep    1
    Click Element    ${高级搜索确定按钮}
    sleep    1
    Click Element    ${高级向上展开按钮}
    sleep    1

房产状态导出
    Click Element    ${房产状态导出Excel}
    sleep    1

房产资源平面图查看
	等待元素可用	${房间链接}
	sleep    1
    Click Element    ${房间链接}
    sleep    1
    Click Element    ${关闭平面图查看}
    sleep    1

绑定房产管理员新增
    数据库查询操作    ${guanliqu}
    ${GLQ}    Set Variable    ${var[0][0]}
    sleep    1
	等待元素可用	${绑定}
	sleep    1
    Click Element    ${绑定}
    sleep    1
    Click Element    ${房产管理员}
    sleep    1
    Click Element    ${admin员工}
    sleep    1
    Input Text    ${管理区范围}    ${GLQ}
    sleep    1
    Click Element    ${管理区范围搜索按钮}
    sleep    1
    Click Element    ${第一个管理区}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

绑定房产管理员编辑
	等待元素可用	${绑定编辑}
	sleep    1
    Click Element    ${绑定编辑}
    sleep    1
    Click Element    ${分组确定}
    sleep    1

绑定房产管理员解绑
	等待元素可用	${解绑}
	sleep    1
    Click Element    ${解绑}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
