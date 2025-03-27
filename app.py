from flask import Flask, jsonify
from flask_cors import CORS  

app = Flask(__name__)

CORS(app)

@app.route('/')
def home():
    return jsonify({"mensaje": "Hola, son una API que corre en un contedor!"})

@app.route('/siayec')
def siayec():
    return jsonify({"saludo": "Hola grupo Siayec"})

@app.route('/status')
def status():
    return jsonify({"status": "OK", "version": "1.0"})
