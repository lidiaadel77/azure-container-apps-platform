from flask import Flask, jsonify
import os

app = Flask(__name__)


@app.route("/")
def home():
    return """
    <h1>Azure Container Apps Platform</h1>
    <p>This Flask API is running inside a Docker container.</p>
    <p>The platform will use Azure Container Apps, Azure Container Registry, Terraform, GitHub Actions, and monitoring.</p>
    """


@app.route("/health")
def health():
    return jsonify({
        "status": "ok",
        "service": "azure-container-apps-platform"
    })


@app.route("/version")
def version():
    return jsonify({
        "version": os.getenv("APP_VERSION", "local-dev"),
        "environment": os.getenv("APP_ENV", "local")
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
