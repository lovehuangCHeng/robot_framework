*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/基础信息/客户管理.py

*** Keywords ***
新建客户数据
    [Arguments]    ${testname}    ${phoneNum}
    sleep    1
	等待element元素可见    ${客户新建}
    sleep    1
    Click Element    ${客户新建}
    sleep    1
    Input Text    ${客户名称}    ${testname}
    sleep    1
    Click Element    ${选择管理区}
    sleep    1
    Click Element    ${管理区数据}
    sleep    1
	Click Element    ${客户性别男}
    sleep    1
    Input Text    ${电话号码}    ${phoneNum}
    sleep    1
    Click Element    ${客户档案保存}
    sleep    1
	等待element元素可见    ${合并重名客户}
	sleep    1

查询客户数据
    [Arguments]    ${testname}
	等待element元素可见    ${客户档案搜索框}
    sleep    1
    Input Text    ${客户档案搜索框}    ${testname}
    sleep    1
    Click Element    ${客户档案搜索按钮}
    sleep    1

客户数据高级搜索
    [Arguments]    ${testname}
	等待element元素可见    ${客户向下展开按钮}
    sleep    1
    Click Element    ${客户向下展开按钮}
	sleep    1
	等待element元素可见    ${高级搜索按钮}
    sleep    1
    Click Element    ${选择管理区}
    sleep    1
	Click Element    ${管理区数据}
    sleep    1
    Input Text    ${客户名称}    ${testname}
    sleep    1
    Click Element    ${高级搜索按钮}
    sleep    1
	等待element元素可见    ${客户名称断言}
	断言值包含    ${客户名称断言}	逐日者
	sleep    1

编辑客户档案
	等待element元素可见    ${客户编辑}
    sleep    1
    Click Element    ${表格中管理区数据}
    sleep    1
    Click Element    ${客户编辑}
    sleep    1
	Click Element    ${客户性别男}
    sleep    1
    Click Element    ${客户档案保存}
    sleep    1
	等待element元素可见    ${客户档案断言}	
	sleep    1

合并重名客户
	等待element元素可见    ${合并重名客户}
    sleep    1
    Click Element    ${合并重名客户}
    sleep    1
	断言值包含    ${合并同名客户title}	合并同名客户
	sleep    1
    Click Element    ${关闭合并同名客户}
    sleep    1
	等待element元素可见    ${合并重名客户}
	sleep    1

删除新建客户
	[Arguments]    ${testname}
	查询客户数据	${testname}
    sleep    1
	等待element元素可见    ${客户删除}
    sleep    1
    Click Element    ${客户删除}
    sleep    1
	等待element元素可见    ${确认删除按钮}
    sleep    1
    Click Element    ${确认删除按钮}
    sleep    1
	等待element元素可见	${删除成功}
	断言值包含    ${删除成功}	删除成功
	sleep    1

新建业主委员会
	等待element元素可见    ${新增成员}
    sleep    1
    Click Element    ${新增成员}
    sleep    1
    Click Element    ${委员会取消}
    sleep    1

查询业主委员会
	等待element元素可见    ${新增成员}
    sleep    1
    Click Element    ${委员会选择管理区}
    sleep    1
    Click Element    ${委员会管理区数据}
    sleep    1

	
客户名称变量
    ${testname}    按时间自定义变量    逐日者
	Set Suite Variable    ${testname}
    [Return]    ${testname}
