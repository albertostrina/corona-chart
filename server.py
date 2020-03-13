import pymysql
import get_data
from flask import Flask,render_template
app = Flask(__name__)


def get_report():
    conn = pymysql.connect(host='localhost', user='root', password='password', database='corona')
    c = conn.cursor()
    c.execute('SELECT `DA`, `RE`, `LU`, `TOT`, `INC`, `GU`, `DE`, `TA` FROM `daily_rep` WHERE 1 ORDER BY DA ASC')
    conn.commit()
    result = c.fetchall()
    c.close()
    conn.close()
    return result


def get_days():
    conn = pymysql.connect(host='localhost', user='root', password='password', database='corona')
    c = conn.cursor()
    c.execute('SELECT `date` FROM `date_rep` WHERE 1 ORDER BY date ASC')
    conn.commit()
    result = c.fetchall()
    c.close()
    conn.close()
    return result


@app.route("/")
def home():
    try:
        get_data.get_data()
    except:
        pass
    return render_template('index.html', giorni=get_days(), report=get_report())


if __name__ == "__main__":
    app.run()