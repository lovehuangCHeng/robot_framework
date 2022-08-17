*** Settings ***
Variables         ../../../../config/geturl.py
Resource          文档资料管理-resource.txt

*** Test Cases ***
新建文档资料
    登录    ${文档资料管理}
    sleep    1
    新建保存文档资料
    sleep    1
    新建取消文档资料
    sleep    1
    [Teardown]    关闭浏览器

编辑文档资料
    登录    ${文档资料管理}
    搜索文档资料
    编辑保存文档资料
    sleep    3
    编辑取消文档资料
    sleep    3
    [Teardown]    关闭浏览器

查看文档资料
    登录    ${文档资料管理}
    sleep    1
    搜索文档资料
    sleep    1
    查看文档资料
    sleep    1
    查看页面返回
    sleep    1
    [Teardown]    关闭浏览器

文档审核管理
    登录    ${文档资料管理}
    sleep    1
    搜索文档资料
    sleep    1
    更多-审核
    sleep    1
    更多-撤销审核
    sleep    1
    [Teardown]    关闭浏览器

文档附件管理
    登录    ${文档资料管理}
    sleep    3
    搜索文档资料
    更多-添加附件（伪）
    sleep    3
    更多-删除附件
    [Teardown]    关闭浏览器

删除文档资料
    登录    ${文档资料管理}
    sleep    1
    搜索文档资料
    sleep    1
    更多-删除
    sleep    1
    二次确认
    sleep    1
    [Teardown]    关闭浏览器
