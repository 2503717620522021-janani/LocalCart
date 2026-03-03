# -*- coding: utf-8 -*-
"""
Created on Tue Mar  3 18:27:46 2026

@author: Hxtreme
"""

import mysql.connector
from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

def get_db():
    return mysql.connector.connect(
        host="localhost", user="root", password="password123", database="LocalCartDB"
    )

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/get_products', methods=['POST'])
def fetch_products():
    city = request.form.get('city')
    category = request.form.get('category')
    db = get_db(); cursor = db.cursor()
    cursor.execute("SELECT DISTINCT product_name FROM LocalStores WHERE location_city = %s AND category = %s", (city, category))
    products = [row[0] for row in cursor.fetchall()]
    db.close()
    return jsonify({"products": products})

@app.route('/search_deals', methods=['POST'])
def search_deals():
    city = request.form.get('city')
    product = request.form.get('product')
    db = get_db(); cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM LocalStores WHERE location_city = %s AND product_name = %s ORDER BY distance_km", (city, product))
    results = cursor.fetchall()
    db.close()
    return jsonify({"success": True, "stores": results})

if __name__ == '__main__':
  app.run(debug=True, use_reloader=False)
