from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "You have successfully passed this test"

if __name__ == '__main__':
    app.run(debug=True)