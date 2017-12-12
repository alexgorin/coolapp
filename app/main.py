from flask import Flask
app = Flask(__name__)


def do_something():
    return 'Hi!'

@app.route('/')
def index():
    return do_something()