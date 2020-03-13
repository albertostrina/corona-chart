import requests
import json
from datetime import date
from bs4 import BeautifulSoup
import pymysql


def get_data():
    oggi = date.today()

    r = requests.get('https://lab24.ilsole24ore.com/_json/dati-Provincia.json')
    data_json = r.json()['dataset']['dati'][0]
    cont = requests.get('https://lab24.ilsole24ore.com/coronavirus/').text
    soup = BeautifulSoup(cont, 'html')
    numero = soup.find("h2", {"id": "num_1"})['data-to']
    conn = pymysql.connect(host='localhost', user='root', password='password', database='corona')
    c = conn.cursor()
    c.execute('INSERT INTO `date_rep`(`date`) VALUES ("' + str(oggi) + '");')
    conn.commit()
    c.execute('INSERT INTO `daily_rep`(`DA`, `RE`, `LU`, `TOT`, `INC`, `GU`, `DE`, `TA`) VALUES ("'+str(oggi)+'","'+data_json['RE']+'","'+data_json['LU']+'",'+numero+','+data_json['IN']+','+data_json['GU']+','+data_json['DE']+','+data_json['TA']+');')
    conn.commit()
    c.close()
    conn.close()
