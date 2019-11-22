#! /usr/local/bin/python3
# -*- coding: utf-8 -*-

import speech_recognition
import pymysql
import jieba
import json
import base64

# 資料庫資訊
DB_IP = "0.0.0.0"
DB_Username = "root"
DB_Password = "qwe123"
DB_DB = "DB"
storeTable = "StoreDetails"


def 聽使用者說話():
    r = speech_recognition.Recognizer()

    with speech_recognition.Microphone() as source:
        r.adjust_for_ambient_noise(source)
        audio = r.listen(source)

    result = r.recognize_google(audio, language='zh-TW')
    return result


def 用店名搜尋店家資料(words):
    # 打开数据库连接
    db = pymysql.connect(DB_IP, DB_Username, DB_Password, DB_DB)

    # 使用 cursor() 方法创建一个游标对象 cursor
    cursor = db.cursor()

    # 使用 execute()  方法执行 SQL 查询
    sql = "SELECT * FROM `" + storeTable + "` WHERE "
    sqlWords = []
    for word in words:
        sqlWords.append("UPPER(`StoreName`) LIKE '%" + word + "%'")
    sql = sql + " OR ".join(sqlWords)
    # print(sql)
    cursor.execute(sql)

    # 使用 fetchall() 方法获取多条数据.
    rows = cursor.fetchall()

    # 关闭数据库连接
    db.close()

    return rows


def 用店家類型搜尋店家資料(words):
    # 打开数据库连接
    db = pymysql.connect(DB_IP, DB_Username, DB_Password, DB_DB)

    # 使用 cursor() 方法创建一个游标对象 cursor
    cursor = db.cursor()

    # 使用 execute()  方法执行 SQL 查询
    sql = "SELECT * FROM `" + storeTable + "` WHERE "
    sqlWords = []
    for word in words:
        sqlWords.append("`SalesType` LIKE '%" + word + "%'")
    sql = sql + " OR ".join(sqlWords)

    cursor.execute(sql)

    # 使用 fetchall() 方法获取多条数据.
    rows = cursor.fetchall()

    # 关闭数据库连接
    db.close()

    return rows

def 增加搜尋次數(stores):
    # 打开数据库连接
    db = pymysql.connect(DB_IP, DB_Username, DB_Password, DB_DB)

    for no in stores:
        # 使用 cursor() 方法创建一个游标对象 cursor
        cursor = db.cursor()
        sql = "UPDATE `StoreDetails` SET `search` = `search` + 1 WHERE `StoreDetails`.`No` = '" + no + "';"
        cursor.execute(sql)

    db.commit()
    # 关闭数据库连接
    db.close()

def 輸出(res):
    print(base64.b64encode(res.encode(encoding="utf-8")).decode())
    exit(0)

# 程序執行入口
if __name__ == "__main__":
    # print("你要搜尋什麼呢~ ")
    try:
        #result = 聽使用者說話()
        result = "Fila運動鞋在哪裡"
        result = result.upper()  # 全部英文變大寫
        # print("你說了: ", result)
    except speech_recognition.UnknownValueError:
        data = {
            'text': '聽不清楚，請再說一遍',
            'main': {},
            'about': {},
        }
        res = json.dumps(data, ensure_ascii=False, indent=2)
        輸出(res)
    except Exception as e:
        data = {
            'text': e.__str__(),
            'main': {},
            'about': {},
        }
        res = json.dumps(data , ensure_ascii=False, indent=2)
        輸出(res)

    # 切關鍵字
    關鍵字 = list(jieba.cut(result, cut_all=False, HMM=True))
    # print(關鍵字)

    主要資料 = {}
    次要資料 = {}
    storeNames = []

    # 開始用關鍵字，去搜尋店名
    店家資料 = 用店名搜尋店家資料(關鍵字)
    for 資料 in 店家資料:
        # print(資料)
        店家編號 = 資料[0]
        店家類型 = 資料[2]
        重組資料 = {
            'id': 資料[0],
            'store_name': 資料[1],
            'store_type': 資料[2],
            'price': 資料[3],
            'floor': 資料[4],
            'tel': 資料[5],
            'work_time': 資料[6],
            'detail': 資料[7],
            'search': 資料[8],

        }
        主要資料[店家編號] = 重組資料

        storeNames.append(店家編號)
        # 把搜尋到的資料的店家類型再塞入
        if 店家類型 not in 關鍵字:
            關鍵字.append(店家類型)

    # 搜尋相關店家類型的資料
    店家資料 = 用店家類型搜尋店家資料(關鍵字)
    for 資料 in 店家資料:
        # print(資料)
        店家編號 = 資料[0]
        # 沒重複的資料才紀錄下來
        if 店家編號 not in 主要資料:
            重組資料 = {
                'id': 資料[0],
                'store_name': 資料[1],
                'store_type': 資料[2],
                'price': 資料[3],
                'floor': 資料[4],
                'tel': 資料[5],
                'work_time': 資料[6],
                'detail': 資料[7],
                'search': 資料[8],
            }
            次要資料[店家編號] = 重組資料
            #storeNames.append(店家編號)

    # num = len(主要資料)
    # print("主要資料數量: ", num)
    # num = len(次要資料)
    # print("相關類型資料數量: ", num)
    增加搜尋次數(storeNames)

    data = {
        'text': result,
        'main': 主要資料,
        'about': 次要資料,
    }

    res = json.dumps(data, ensure_ascii=False, indent=2)
    輸出(res)
