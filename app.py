from flask import Flask, jsonify
from flask_cors import CORS


def create_app():
    app = Flask(__name__)
    CORS(app)

    @app.route('/')
    def home():
        return jsonify({"mensaje": "Hola, soy una API de python construida con Flask y paso por un proceso de CI/CD!"})
    
    @app.route('/deploy')
    def deploy():
        return jsonify({"mensaje": "Soy un nuevo deploy"})

    @app.route('/siayec')
    def siayec():
        return jsonify({"saludo": "Hola grupo Siayec !!!"})

    @app.route('/status')
    def status():
        return jsonify({"status": "OK", "version": "1.0"})

    return app


app = create_app()
