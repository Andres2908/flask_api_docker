from flask import Flask, jsonify
from flask_cors import CORS  

def create_app():
    app = Flask(__name__)
    CORS(app)
    
    @app.route('/')
    def home():
        return jsonify({"mensaje": "Hola, soy una API de python construida con Flask y corro con appRunner!"})
    
    @app.route('/siayec')
    def siayec():
        return jsonify({"saludo": "Hola grupo Siayec"})
    
    @app.route('/status')
    def status():
        return jsonify({"status": "OK", "version": "1.0"})
    
    return app

app = create_app()

# Elimina el bloque if __name__... (Gunicorn lo maneja)