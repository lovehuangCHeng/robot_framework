*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          收费标准设置-resource.robot
Library           Selenium2Library

*** Test Cases ***
新建收费标准(周期)
    登录    ${收费标准设置}
    新建周期性收费标准
    sleep    0.5
    断言存在    ${创建成功}
    sleep    1
    [Teardown]    关闭浏览器

新建收费标准(用量)
    登录    ${收费标准设置}
    新建用量收费标准
    sleep    0.5
    断言存在    ${创建成功}
    sleep    1
    [Teardown]    关闭浏览器

新建收费标准(数量)
    登录    ${收费标准设置}
    新建数量收费标准
    sleep    0.5
    断言存在    ${创建成功}
    sleep    1
    [Teardown]    关闭浏览器

新建收费标准(固定金额)
    登录    ${收费标准设置}
    新建固定金额收费标准
    sleep    0.5
    断言存在    ${创建成功}
    sleep    1
    [Teardown]    关闭浏览器

新建收费标准(指定金额)
    登录    ${收费标准设置}
    新建指定金额收费标准
    sleep    0.5
    断言存在    ${创建成功}
    sleep    1
    [Teardown]    关闭浏览器

编辑收费标准
    登录    ${收费标准设置}
    搜索收费标准
    sleep    1
    编辑收费标准
    sleep    0.5
    断言存在    ${编辑成功}
    sleep    1
    [Teardown]    关闭浏览器

复制收费标准
    登录    ${收费标准设置}
    复制收费标准
    sleep    1
    [Teardown]    关闭浏览器

删除收费标准
    登录    ${收费标准设置}
    搜索收费标准
    sleep    1
    删除收费标准
    sleep    0.5
    断言存在    ${删除成功}
    [Teardown]    关闭浏览器

导出收费标准
    登录    ${收费标准设置}
    搜索收费标准
    sleep    1
    导出收费标准
    sleep    2
    [Teardown]    关闭浏览器
