*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/系统管理/系统管理Xpath.py

*** Keywords ***
新建用户
    等待element元素可见    ${新建用户按钮}
    sleep    1
    click element    ${新建用户按钮}
    等待element元素可见    ${用户名称输入框}
    sleep    1
    Input Text    ${用户名称输入框}    RF用户名称
    sleep    1
    Input Text    ${用户电话输入框}    15214789651
    sleep    1
    click element    ${保存按钮}
	sleep    1

搜索用户
    等待element元素可见    ${简单搜索用户输入框}
    sleep    1
    Input Text    ${简单搜索用户输入框}    RF用户名称
    sleep    1
    click element    ${简单搜索按钮}
	sleep    1

编辑用户
	等待element元素可见    ${编辑用户按钮}
    sleep    1
	click element    ${编辑用户按钮}
    sleep    1
    click element    ${保存按钮}
	sleep    1

禁用启用用户
    等待element元素可见    ${显示按钮}
    sleep    1
    click element    ${禁用用户按钮}
    sleep    1
	click element    ${显示按钮}
    sleep    1
    click element    ${显示禁用}
	sleep    1
	click element    ${启用用户按钮}
    sleep    1
	
显示禁用启用用户
	等待element元素可见    ${显示按钮}
    sleep    1
    click element    ${显示按钮}
    sleep    1
    click element    ${显示禁用}
	sleep    1
	click element    ${显示按钮}
    sleep    1
    click element    ${显示启用}
	sleep    1
	
导入用户模板
    等待element元素可见    ${导入职员}
    sleep    1
    mouse over    ${导入职员}
    sleep    1
    click element    ${导入职员模板}
    sleep    1
	click element    ${取消导入职员模板}
    sleep    1
	
下载用户导入模板
    等待element元素可见    ${导入职员}
    sleep    1
    mouse over    ${导入职员}
    sleep    1
    click element    ${下载职员模板}
    sleep    1

组织机构添加职员
    等待element元素可见    ${职员组织结构}
    sleep    1
    click element    ${职员组织结构}
    等待element元素可见    ${职员组织机构_选择左侧组织架构}
    sleep    1
    click element    ${职员组织机构_选择左侧组织架构}
    sleep    1
    click element    ${选择职员按钮}
	sleep    1
    click element    ${选择一个职员添加}
    sleep    1
    click element    ${添加员工保存按钮}
	sleep    1
	
组织机构移除职员
    等待element元素可见    ${职员组织结构}
    sleep    1
    click element    ${职员组织结构}
    等待element元素可见    ${职员组织机构_选择左侧组织架构}
    sleep    1
    click element    ${职员组织机构_选择左侧组织架构}
    sleep    1
    click element    ${移除职员按钮}
	sleep    1
    click element    ${确认删除按钮}
    sleep    1

岗位添加职员
    等待element元素可见    ${职员岗位}
    sleep    1
    click element    ${职员岗位}
    等待element元素可见    ${职员岗位_选择左administrator}
    sleep    1
    click element    ${职员岗位_选择左administrator}
    sleep    1
    click element    ${选择职员按钮}
    sleep    1
    click element    ${选择一个职员添加}
    sleep    1
    click element    ${添加员工保存按钮}
	sleep    1

岗位移除职员
    等待element元素可见    ${职员岗位}
    sleep    1
    click element    ${职员岗位}
	sleep    1
    等待element元素可见    ${职员岗位_选择左administrator}
    sleep    1
    click element    ${职员岗位_选择左administrator}
    sleep    1
    click element    ${移除职员按钮}
	sleep    1
	click element    ${确认删除按钮}
    sleep    1

删除用户
    搜索用户
    等待element元素可见    ${一条用户数据}
    sleep    1
    click element    ${一条用户数据}
    sleep    1
    click element    ${删除用户按钮}
    sleep    1
    click element    ${确认删除按钮}
	sleep    1
