from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <html>
        <head><title>DevOps Project</title></head>
        <body style="font-family: Arial; text-align: center; padding: 50px;">
            <h1>🚀 DevOps Automation Project</h1>
            <h2>Successfully Deployed with Terraform + Jenkins + Azure!</h2>
            <p>Infrastructure as Code using Terraform</p>
            <p>CI/CD Pipeline using Jenkins</p>
            <p>Hosted on Azure App Service</p>
        </body>
    </html>
    '''

@app.route('/health')
def health():
    return {'status': 'healthy'}, 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=False)
