DECLARE @sql NVARCHAR(500)

DECLARE @name NVARCHAR(200)
SET @name = '''pms_xinye_0616'''

DECLARE @pathwulidizhi NVARCHAR(200)

SET @pathwulidizhi = '''E:\SQL_Server\压力测试脚本\'+@name+'.bak'''

BEGIN
SET @sql = 'restore database ' + @name +
' from disk=' + @pathwulidizhi +
' with move ''ZHXC0614'' to ' + '''E:\SQL_Server\MSSQL14.MSSQLSERVER\MSSQL\DATA'+@name + '.mdf''' +
',move ''ZHXC0614_log'' to ' + '''E:\SQL_Server\MSSQL14.MSSQLSERVER\MSSQL\DATA'+@name + '_log.ldf''' + ' ,STATS=10,replace'

EXEC (@sql)

END