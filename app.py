from flask import Flask, jsonify
from flask_cors import CORS  

app = Flask(__name__)

CORS(app)

@app.route('/')
def home():
    return jsonify({"mensaje": "Hola, Docker con Flask!"})

@app.route('/siayec')
def siayec():
    return jsonify({"saludo": "Hola grupo Siayec"})

@app.route('/status')
def status():
    return jsonify({"status": "OK", "version": "1.0"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)