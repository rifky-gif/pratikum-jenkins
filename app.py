from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return "<h2>Selamat datang di Mobile Virtual App Flask!</h2><p>Container ini jalan di Docker 🐳</p>"

@app.route('/api/ping')
def ping():
    return jsonify({"status": "ok", "message": "pong"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
