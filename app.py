from flask import Flask, jsonify
from flask_cors import CORS


def create_app():
    app = Flask(__name__)
    CORS(app)

    @app.route('/')
    def home():
        return jsonify({"mensaje": "Hola equipo Siayec!"})
    
    @app.route('/deploy')
    def deploy():
        return jsonify({"mensaje": "Hola Charly, soy un nuevo deploy."})

    @app.route('/siayec')
    def siayec():
        return jsonify({"saludo": "Hola grupo Siayec !!!"})

    @app.route('/status')
    def status():
        return jsonify({"status": "OK", "version": "2.0"})

    return app


app = create_app()
