import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "🚀 Broissin-AI-Hub: Modelo de Regresión Operativo en Google Cloud"

if __name__ == "__main__":
    # Cloud Run requiere que escuches en el puerto que te asigne la variable PORT
    port = int(os.environ.get("PORT", 8080))
    app.run(host='0.0.0.0', port=port)