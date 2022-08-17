import time
import re
import requests
import json

class MyString():
	def __init__(self):
		pass
	def Time_Random(self,str):
		t=time.gmtime()
		z=time.strftime("%Y%m%d%H%M%S",t)
		return (str+z)
	'''
		pigx 分支返回accesstoken 重新组装header。
		'''
	def get_PigxToken(self,username,password,url,pigxLoginHeader,pigxAccessToken):
		data = {
			"UserName": username,
			"Password": password
		}
		res = requests.post(url,data=data,headers=pigxLoginHeader)
		ss = re.search(r'"access_token":"(.*)","token_type"', res.text, re.S)
		token1 = ss.group(1)
		# cookie=cookie.split("=")[1]
		token = "Bearer " + token1
		pigxAccessToken = json.loads(pigxAccessToken)
		pigxAccessToken["Authorization"] = token
		return pigxAccessToken
	'''
     获取cookiename=nova_pms_auth_Default，保存cookie到文件中cookies.txt
    '''
	def save_Cookis(self,cookies):
		with open('F:/install-tools/robot_framework/cookies.txt', 'w') as fp:
				fp.write(cookies)


	'''
          从文件中读取cookie
	'''
	def set_Cookie(self):
		with open("F:/install-tools/robot_framework/cookies.txt", 'r') as fp:
			# s = fp.read()
			cookies = fp.read()
			s=re.search(r'nova_pms_auth_Default=(.*);',cookies)
			cookie=s.group(1)
			#cookie=cookie.split("=")[1]
			print(cookie)
			return cookie
	'''
	获取pc端登录后的cookies
	'''
	def getloginCookie(self,url,username,password,formatHeader):
		res=requests.get(url)#get方法，获取PC token数据
		ss=re.search(r'name="__RequestVerificationToken"\stype="hidden"\svalue="(.*)"\s/></form>',res.text,re.S)
		token=ss.group(1)
		data = {
			"UserName": username,
			"Password": password,
			"__RequestVerificationToken": token
		}
		header=json.loads(formatHeader)#数据进行josn格式转化
		reulst = requests.Session()#因为登录使用的是重定向，需要保持连接状态，好获取cookie数据。
		r2 = reulst.post(url,data=data,headers=header,cookies=res.cookies)
		return reulst.cookies
	'''
          PC端返回token
	'''
	def get_Pctoken(self,username,password,url,pigxLoginHeader,pigxAccessToken):
		data = {
			"UserName": username,
			"Password": password
		}
		res = requests.post(url,data=data,headers=pigxLoginHeader)
		ss = re.search(r'"access_token":"(.*)","token_type"', res.text, re.S)
		token1 = ss.group(1)
		# cookie=cookie.split("=")[1]
		token = "Bearer " + token1
		pigxAccessToken = json.loads(pigxAccessToken)
		pigxAccessToken["Authorization"] = token
		return pigxAccessToken
	
	'''
          app 端获取token
	'''
	def get_apptoken(self,url,username,password,header):
		'''

		:param url:
		:param username:
		:param password:
		:param header:
		:return:
		'''
		data={
			"grant_type":"password",
			"client_id":"app",
			"client_secret":"Hzc5Wy",
			"username":username,
			"password":password,
			"scope":"openid profile roles offline_access"
		}
		headers=json.loads(header)
		res=requests.post(url,data=data,headers=headers)
		ss=re.search(r'"access_token":"(.*)","expires_in":',res.text,re.S)
		token=ss.group(1)
		#cookie=cookie.split("=")[1]
		return token

	def append_url(self,oldurl, str, value, *args):
		'''
        :param str: url中的第一个参数
        :param value url中第一个参数需要替换的值
        :param args:不定长变量，参数中多个变时，一个参数一个值，str1,values1,str2,value2...一直累计。
        :return:
        '''
		url = oldurl
		if len(args) == 0:
			url = oldurl.replace(str, value)
		elif len(args) == 2:
			url1 = oldurl.replace(str, value)
			url = url1.replace(args[0], args[1])
		elif len(args) == 4:
			url1 = oldurl.replace(str, value)
			url2 = url1.replace(args[0], args[1])
			url = url2.replace(args[2], args[3])
		else:
			print("url参数替换报错")
		return url


		
# if __name__=="__main__":
# 	s=MyString()
# 	customer_getinfo = s.append_url(s.customer_getinfo, '${1}', '20')
# 	print(customer_getinfo)



