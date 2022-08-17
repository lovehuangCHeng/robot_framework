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
     获取cookiename=nova_pms_auth_Default，保存cookie到文件中cookies.txt
    '''
    def save_Cookis(self,cookies):
        with open('D:/wuye/robotFramework-WuYe/robotFramework/WUYE-UI-AITest/cookies.txt', 'w') as fp:
            fp.write(cookies)


    '''
          从文件中读取cookie
    '''
    def set_Cookie(self):
        with open("D:/wuye/robotFramework-WuYe/robotFramework/WUYE-UI-AITest/cookies.txt", 'r') as fp:
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
    def get_Pctoken(self,url):
        res=requests.get(url)
        ss=re.search(r'<input name="__RequestVerificationToken" type="hidden" value="(.*)" />',res.text,re.S)
        token=ss.group(1)
        #cookie=cookie.split("=")[1]
        return token
    '''
          app 端获取token
    '''
    def get_apptoken(self,url,username,password):
        data={
            "grant_type":"password",
            "client_id":"app",
            "client_secret":"Hzc5Wy",
            "username":username,
            "password":password,
            "scope":"openid profile roles offline_access"
        }
        # headers=json.loads(header)
        res=requests.post(url,data=data)
        ss=re.search(r'"access_token":"(.*)","expires_in":',res.text,re.S)
        token=ss.group(1)
        #cookie=cookie.split("=")[1]
        token="Bearer "+token
        return token

    def read_pc_header(self,key):
        with open("header.json") as fp:
            data = json.load(fp)
            if key == None:
                return None
            return data[key]
    def read_app_header(self,headerType,url,username,password):
        with open("header.json") as fp:
            data = json.load(fp)
            if headerType == None:
                return None
            data[headerType]["Authorization"]=self.get_apptoken(url,username, password)
            return data[headerType]

if __name__=='__main__':
    s=MyString()
    header=s.read_app_header("app_josn_token_header",'http://10.10.120.171:8081/Nova.Pms.OpenId/Access/Token', 'testing', '123456')
    print(header)
    # header = '{"Content-Type": "application/x-www-form-urlencoded","User-Agent": "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36"}'
    # sre = s.getloginCookie('http://10.10.120.171:8081/Login?ReturnUrl=%2F', 'testing', '123456', header)
    # sapp=s.get_apptoken('http://10.10.120.171:8081/Nova.Pms.OpenId/Access/Token', 'testing', '123456')
    # print(sre)
    # print(sapp)