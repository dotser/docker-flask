#!/usr/bin/env python
import flask
import os

app = flask.Flask(__name__)

@app.route("/")
@app.route("/<path:name>")
def hello(name="World"):
    return flask.render_template("hello.html", name=name)

@app.route("/health")
def health():
    return "Not too bad"

app.run(
    host=os.environ.get("FLASK_HOST", "0.0.0.0"),
    port=int(os.environ.get("FLASK_HOST", 5000)),
    debug=bool(os.environ.get("FLASK_DEBUG", False))
)
