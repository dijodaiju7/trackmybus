from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL

app = Flask(__name__)
app.secret_key = 'many random bytes'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'trackmybus'
mysql = MySQL(app)


@app.route('/')
def home():
    return render_template('index.html')

@app.route('/login')
def login():
    return render_template('dlogin.html')

@app.route('/dashboard',methods=['POST','GET'])
def dash():
    database={'Mark':'123','Mathew':'123','Antony':'123'}
    name1=request.form['username']
    pwd=request.form['password']
    if name1 not in database:
	    return render_template('dlogin.html',info='Invalid User')
    else:
        if database[name1]!=pwd:
            return render_template('dlogin.html',info='Invalid Password')
        else:
	         return render_template('dash.html',name=name1)
   
@app.route('/atrack',methods=['POST','GET'])
def atrack():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM `drivers` WHERE DriverId ='TMBDR1'")
    data = cur.fetchall()
    cur.close()
    return render_template('atrack.html',driver=data)

@app.route('/track')
def track():
    
    return render_template('track.html')

@app.route('/insert', methods = ['POST'])
def insert():
 if request.method == "POST":
        flash("Data Inserted Successfully")
        StartingPoint = request.form['from']
        Destination = request.form['to']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO drivers (StartingPoint, Destination) VALUES (%s, %s)", ( StartingPoint, Destination))
        mysql.connection.commit()
        return redirect(url_for('home'))

if __name__ == "__main__":
    app.run(debug=True)
