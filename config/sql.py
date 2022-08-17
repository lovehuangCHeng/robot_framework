# Can be used in the test data like ${MyObject()} or ${MyObject(1)}
class MyObject:
    def __init__(self, index=''):
        self.index = index
    def __str__(self):
        return '<MyObject%s>' % self.index
'''
数据库配置连接信息
sqlconfig="DRIVER='{SQL Server}',SERVER='WIN-E4I1KQ1IN70',DATABASE='pms_xinye',UID='sa',PWD='Sa123456'"
'''	

'''
查询第一个管理区的分公司名称
'''
fenGongSiName="select Name from OrganizationItem where Id=(select top 1 ParentId from OrganizationItem where Discriminator ='管理区' )and ItemType=1;"
'''
查询管理区数据
'''
guanliqu="select top 1 Name from OrganizationItem where Discriminator='管理区';"
guanliquID="select top 1 ID from OrganizationItem where Discriminator='管理区';"
'''
查询楼宇数据
'''
'''
删除新建的员工
'''
delNewstaff="delete from  staff where id in (select top 1 id from staff ORDER BY id desc )"

louyu="select Name,code from OrganizationItem where Discriminator='楼宇';"
#管理区下楼宇id
GLQLYID="select top 1 ID from OrganizationItem where Discriminator='楼宇' and parentid in(select top 1 ID from OrganizationItem where Discriminator='管理区')"
#查询有账单房间的管理区ID,楼宇ID，房间ID
BillOBHid="select top 1 o.RegionId,o.BuildingId,o.id from OrganizationItem o,bill b where o.id=b.OrganizationItemID"
#查询有账单房间的楼宇名称和管理区ID
BillBNameOid="select name,regionID from OrganizationItem where id=(select top 1 o.BuildingId from OrganizationItem o,bill b where o.id=b.OrganizationItemID and o.BuildingId is not null)"
'''
查询停车场数据
'''
tingchechang="select Name from OrganizationItem where Discriminator='停车场';"
'''
获取房间ID，用户名称，房间代码，房间存在账单和业主的情况。
'''
getcustomerbillcode="SELECT top 1 o.Id,c.Name,o.code FROM Bill b,OrganizationItem o,Customer c where b.Status=1 AND b.OrganizationItemId = o.Id and c.Id=o.HouseOwnerId and b.IsDelete=0"
#查询已经绑定了收费标准的房间名称\ID
BZFJCODEID="select top 1 code,id from OrganizationItem where ID IN(SELECT  OrganizationItemId from ChargeItemSetting)"

'''
获取有业主的房间代码。
'''
gethouseCode="select top 1 code from  OrganizationItem where HouseOwnerId is not null  AND RegionId =(select top 1 Id from OrganizationItem  where Discriminator='管理区')"
'''
获取当前月未抄表的仪表ID、仪表名称、仪表绑定房间名称
'''
GetHouseMeterID="select  top 1 HouseMeterReading.housemeterid from HouseMeter  left join HouseMeterReading on HouseMeter.ID=HouseMeterReading.ID where HouseMeter.isAvailable='1' AND HouseMeterReading.housemeterid is not null AND HouseMeter.LastReadDate < CONVERT(varchar(7), getdate() , 120) + '-1'"
GetHouseMeterName="select  top 1 HouseMeter.name from HouseMeter  left join HouseMeterReading on HouseMeter.ID=HouseMeterReading.ID where HouseMeter.isAvailable='1' AND HouseMeterReading.housemeterid is not null AND HouseMeter.LastReadDate < CONVERT(varchar(7), getdate() , 120) + '-1'"
GetMeterHouseCode="select top 1 Code FROM OrganizationItem WHERE id in (SELECT top 50 HouseMeter.HouseId from HouseMeter  left join HouseMeterReading on HouseMeter.ID=HouseMeterReading.ID where HouseMeter.isAvailable='1' AND HouseMeterReading.housemeterid is not null AND HouseMeter.LastReadDate < CONVERT(varchar(7), getdate() , 120) + '-1')"

'''
获取已出账单房间、账单应收日期
有收费的账单:pt.status 0.1.2.3分别对应票据状态: 未打印,已打印,已退款,已作废   p.status 0.1.2分别对应账单状态.正常，已撤销，已扎帐-
'''
#获取已出账单且已出账单没有交费的房间code\账单应收日期\客户名称
GetBillYCodeAndDay="select top 1 o.code,b.ShouldChargeDate,c.name FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=0 and pt.Status=0 and b.IsDelete=0 and b.OrganizationItemId is not null and b.PaidAmount = 0 and (b.ActualAmount-b.PaidAmount)>0 and b.Status=1 and b.id not in (SELECT billid FROM PaymentLineItem WHERE paid<=0)  "
#获取已出账单且已出账单且部分缴费的房间code\账单应收日期\客户名称
##部分缴费且打印票据（未扎帐）
GetBillNCodeAndDayST2="select top 1 o.code,b.ShouldChargeDate,c.name FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=0 and pt.Status=1 and b.IsDelete=0 and b.OrganizationItemId is not null and b.PaidAmount <> 0 and (b.ActualAmount-b.PaidAmount)>0 and b.Status=1 and b.id not in (SELECT billid FROM PaymentLineItem WHERE paid<=0) "
##部分缴费且未打印票据（未扎帐）
GetBillNCodeAndDayST3="select top 1 o.code,b.ShouldChargeDate,c.name FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=0 and pt.Status=0 and b.IsDelete=0 and b.OrganizationItemId is not null and b.PaidAmount <> 0 and (b.ActualAmount-b.PaidAmount)>0 and b.Status=1 and b.id not in (SELECT billid FROM PaymentLineItem WHERE paid<=0) "
###部分缴费且未打印票据且(已扎帐)
GetBillNCodeAndDayST4="select top 1 o.code,b.ShouldChargeDate,c.name FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=2 and pt.Status=0 and b.IsDelete=0 and b.OrganizationItemId is not null AND b.Status=1"

'''
获取有固定金额的管理区及管理区、客户名称、固定金额标准名称
'''
Cal4ChargeName='SELECT TOP 1 o.name,c.name,cu.Name from OrganizationItem o,ChargeItem c,Customer cu where c.CalculationMethod=4 and o.id=c.OrganizationItemId and cu.RegionId=c.OrganizationItemId'
'''
获取已出账单房间、账单应收日期
'''
'''
催费通知查询
'''
#查询当前月之前有欠费账单的管理区
GetCurentShouldChargBill="SELECT RegionId FROM BILL WHERE ShouldChargeDate <= CONVERT(varchar(7), getdate() , 120)  + '-28'  AND IsDelete=0  and (Amount-PaidAmount) > 0"
#获取权限为adminnistrator的账号数据

'''
查询预存款账户
'''
#查询零头账户客户名称（余额大于0）
GetAccountInt1Cname="SELECT NAME from Customer c,CustomerAccount ca WHERE ca.InternalType=1	AND ca.Balance>0 AND c.Id=ca.CustomerId AND c.Name is not NULL"
'''
更新固定金额，金额四舍五入后为0的情况
'''
UpdateGudJinE="UPDATE dbo.ChargeItem set FixedAmount=100 where id in (select id from dbo.ChargeItem where  FixedAmount is not null)"


'''
不同状态的账单收费历史查询，获取应收、收费、房间、客户、票据号。
'''
##---------有收费的账单:pt.status 0.1.2.3分别对应票据状态: 未打印,已打印,已退款,已作废   p.status 0.1.2分别对应账单状态.正常，已撤销，已扎帐---------
##---------1.查询已出部分缴费、正常、已打印账单对应的房间代码、客户名称、应收日期、收费日期、票据号------------------
GetBillPT1P0="select top 1 o.code,b.ShouldChargeDate,p.PaidDate,pt.TicketNumber,c.name,c.RegionId FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c,RefundTicket RT where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=0 and pt.Status=1 and b.IsDelete=0 and b.OrganizationItemId is not null and b.PaidAmount > 0 and (b.ActualAmount-b.PaidAmount)>0 and  pt.id <> RT.PaymentTicketId and b.id not in (SELECT billid FROM PaymentLineItem WHERE paid<=0)"
##---------1.查询已出部分缴费、正常、未打印账单对应的房间代码、客户名称、应收日期、收费日期、票据号------------------
GetBillPT0P0="select top 1 o.code,b.ShouldChargeDate,p.PaidDate,pt.TicketNumber,c.name,c.RegionId FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c,RefundTicket RT where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=0 and pt.Status=0 and b.IsDelete=0 and b.OrganizationItemId is not null and b.PaidAmount > 0 and (b.ActualAmount-b.PaidAmount)>0 and  pt.id <> RT.PaymentTicketId and b.id not in (SELECT billid FROM PaymentLineItem WHERE paid<=0) "
##---------1.查询已出已扎帐账单对应的房间代码、客户名称、应收日期、收费日期、票据号------------------
GetBillPT0P2="select top 1 o.code,b.ShouldChargeDate,p.PaidDate,pt.TicketNumber,c.name,c.RegionId FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c,RefundTicket RT where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=2 and b.IsDelete=0 and b.OrganizationItemId is not null and b.PaidAmount <> 0 and (b.ActualAmount-b.PaidAmount)>0 and  pt.id <> RT.PaymentTicketId"
##---------1.查询已出已退款帐账单对应的房间代码、客户名称、应收日期、收费日期、票据号------------------
GetBillPT2P0="select top 1 o.code,b.ShouldChargeDate,p.PaidDate,pt.TicketNumber,c.name,c.RegionId FROM OrganizationItem o,PaymentLineItem pl, bill b, Payment p,PaymentTicket pt,Customer c where o.id=b.OrganizationItemId and b.id=pl.BillId and pl.PaymentId=p.id and p.Id=pt.PaymentId and b.CustomerId=c.id and p.status=0 and pt.Status=0 and b.IsDelete=0 and p.PaidMoney < 0 "
'''代收货款页面数据查询使用
DScode  展厅号
DSname   展厅名称，查询没有同名客户的数据
'''
DScode="select top 1 code from OrganizationItem   where ItemType =5"
DSname="select top 1 Name  from Customer GROUP BY Name  HAVING COUNT(Name)<2"

'''
零头账户数据处理
'''
#插入零头账户数据
CustomerAccoutLingTou="INSERT into dbo.CustomerAccount values((select top 1 id from customer),0.5,0,null,(select top 1  id from FN_Account f where f.parentId=1 ),1)"
#判断系统是否存在零头账户数据
CustomerAccoutCount="select count(*) from CustomerAccount where InternalType=1"
#删除零头账户数据
deleteCustomerAccount="delete from dbo.CustomerAccount  where customerId =(select top 1 id from customer) and Balance=0.5"
#判断是否有插入的零头账户数据
exidCustomerAccount="select count(*)from dbo.CustomerAccount  where customerId =(select top 1 id from customer) and Balance=0.5"
'''
查询模块是否开启
'''
#查询OA模块是否开启
modelOA="select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.OfficeManage'), 0)"
#查询活动模块是否开启
'''
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.GroupCampaign'), 0)
#查询公告模块是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.AnnouncementManagement'), 0)
#查询绿化管理模块是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.GreenManagement'), 0)
#查询轮播图模块是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.System.Swiper'), 0)
#查询出入管理模块是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.ParkingManagement'), 0)
#查询固定资产模块是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.FixedAssetsManagement'), 0)
#查询委托合同模块是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.DelegateContract'), 0)
#查询代收货款是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.PaymentCollection'), 0)
#查询招商管理是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.Lead'), 0)
#查询巡更管理是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.PatrolManagement'), 0)  
#查询收支管理是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.IncomeExpensesManagement'), 0)  
#查询智能排班是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.WorkShift'), 0)  
#查询合同租赁模块是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.Contract'), 0)  
#查询物料管理是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.MaterialManagement'), 0) 
#查询设备管理是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.DeviceManagement'), 0)  
#查询业主委员会是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.OwnersCommitteeManagement'), 0)  
#查询邮包管理是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.ParcelManagement'), 0)  
#查询品质巡查是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.QualityInspectionManagement'), 0)  	
#查询银行托收是否开启
select isnull((select top(1) 1 from SaaS_ShellFeature where Id='Nova.Pms.BankAutoPayment'), 0)
'''


