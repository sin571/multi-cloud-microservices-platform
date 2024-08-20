from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify(message='Hello, World!')

@app.route('/health')
def health_check():
    return jsonify(status='Healthy')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

