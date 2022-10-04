from flask import render_template
from flask import request
from app import app
from datetime import date


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')


@app.route('/generate', methods=['POST', 'GET'])
def generate():
    # on form submission, access inputted data and set to vars
    if request.method == 'POST':
        equipment_id = request.form.get('equipment-id')
        order_date = request.form.get('order-date')
        order_type = request.form.get('order-type-id')
        order_increment = request.form.get('order-increment-id')
        employee_id = request.form.get('employee-id')
        location_id = request.form.get('location-id')
        # if order_date is blank, set to today's date
        if order_date == '':
            today = date.today()
            order_date = today.strftime("%m-%d-%y")
        # remove hyphens from date (yyyy-mm-dd)
        print(order_date)
        order_date = order_date.replace('-', '')
        # drop the first two digits of year (2022 becomes 22)
        order_date = order_date[2:]
        # concat string to form po number
        po_number = order_date + order_type + order_increment + \
            '-' + location_id + employee_id + equipment_id

    return render_template('index.html', po_number=po_number)
