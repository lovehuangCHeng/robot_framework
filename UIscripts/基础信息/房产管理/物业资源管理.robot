*** Settings ***
Resource          房产管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
管理区查看
    登录    ${物业资源管理}
    管理区搜索
    [Teardown]    关闭浏览器

新建分组
    登录    ${物业资源管理}
	${testfz}	分组变量
    管理区搜索
    新建分组    ${testfz}
    [Teardown]    关闭浏览器

编辑分组
    登录    ${物业资源管理}
    编辑分组    ${testfz}
    [Teardown]    关闭浏览器

删除分组
    登录    ${物业资源管理}
    删除分组    ${testfz}
    [Teardown]    关闭浏览器

新建楼宇
    登录    ${物业资源管理}
	${testly}	楼宇变量
    管理区搜索
    新建楼宇    ${testly}
    [Teardown]    关闭浏览器

编辑楼宇
    登录    ${物业资源管理}
    编辑楼宇
    [Teardown]    关闭浏览器

查看楼宇
    登录    ${物业资源管理}
    查看楼宇
    [Teardown]    关闭浏览器

搜索楼宇
    登录    ${物业资源管理}
    搜索楼宇    ${testly}
    [Teardown]    关闭浏览器

删除楼宇
    登录    ${物业资源管理}
    删除楼宇	${testly}
    [Teardown]    关闭浏览器

导出楼宇
    登录    ${物业资源管理}
    楼宇导出
    [Teardown]    关闭浏览器

新建单元
    登录    ${物业资源管理}
	${testdy}	单元变量
    单元新建    ${testdy}
    [Teardown]    关闭浏览器

编辑单元
    登录    ${物业资源管理}
    单元编辑    ${testdy}
    [Teardown]    关闭浏览器

删除单元
    登录    ${物业资源管理}
    单元删除    ${testdy}
    [Teardown]    关闭浏览器

新建停车场
    登录    ${物业资源管理}
	${testtcc}	停车场变量
    停车场新建    ${testtcc}
    [Teardown]    关闭浏览器

编辑停车场
    登录    ${物业资源管理}
    停车场编辑
    [Teardown]    关闭浏览器

查看停车场
    登录    ${物业资源管理}
    停车场查看
    [Teardown]    关闭浏览器

搜索停车场
    登录    ${物业资源管理}
    停车场搜索    ${testtcc}
    [Teardown]    关闭浏览器

删除停车场
    登录    ${物业资源管理}
    停车场删除    ${testtcc}
    [Teardown]    关闭浏览器

导出停车场
    登录    ${物业资源管理}
    停车场导出
    [Teardown]    关闭浏览器

新建房间
    登录    ${物业资源管理}
	${testfj}	房间变量
    房间新建    ${testfj}
    [Teardown]    关闭浏览器

编辑房间
    登录    ${物业资源管理}
    房间编辑
    [Teardown]    关闭浏览器

查看房间
    登录    ${物业资源管理}
    房间查看
    [Teardown]    关闭浏览器

房间业主
    登录    ${物业资源管理}
    房间业主
    [Teardown]    关闭浏览器

房间成员
    登录    ${物业资源管理}
    房间成员
    [Teardown]    关闭浏览器

搜索房间
    登录    ${物业资源管理}
    房间搜索    ${testfj}
    [Teardown]    关闭浏览器

删除房间
    登录    ${物业资源管理}
    房间删除    ${testfj}
    [Teardown]    关闭浏览器

导出房间
    登录    ${物业资源管理}
    停车场导出
    [Teardown]    关闭浏览器

新建车位
    登录    ${物业资源管理}
	${testcw}	车位变量
    车位新建    ${testcw}
    [Teardown]    关闭浏览器

编辑车位
    登录    ${物业资源管理}
    车位编辑
    [Teardown]    关闭浏览器

查看车位
    登录    ${物业资源管理}
    车位查看
    [Teardown]    关闭浏览器

搜索车位
    登录    ${物业资源管理}
    车位搜索    ${testcw}
    [Teardown]    关闭浏览器

车位删除
    登录    ${物业资源管理}
    车位删除    ${testcw}
    [Teardown]    关闭浏览器

车位导出
    登录    ${物业资源管理}
    车位导出
    [Teardown]    关闭浏览器

添加广告位
    登录    ${物业资源管理}
	${testggw}	广告位变量
    广告位新建    ${testggw}
    [Teardown]    关闭浏览器

编辑广告位
    登录    ${物业资源管理}
    广告位编辑
    [Teardown]    关闭浏览器

搜索广告位
    登录    ${物业资源管理}
    广告位搜索    ${testggw}
    [Teardown]    关闭浏览器

删除广告位
    登录    ${物业资源管理}
    广告位删除    ${testggw}
    [Teardown]    关闭浏览器
