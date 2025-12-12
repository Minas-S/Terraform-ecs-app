from flask import Flask, jsonify, request
from datetime import datetime

app = Flask(__name__)

@app.route("/", methods=["GET"])
def home():
    return jsonify({
        "ip": request.remote_addr, "timestamp": datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S UTC")
})

if __name__== "__main__":
    app.run(host="0.0.0.0", port=5000)
