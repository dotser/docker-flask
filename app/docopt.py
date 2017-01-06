#!/usr/bin/env python
"""Hello docker.

Usage:
  app.py [--port <port>] [--host <host>] [--debug]
  app.py --version

Options:
  --port <port>  Sets the listen port [default: 5000]
  --host <host>  Sets the listen interface [default: 0.0.0.0]
  --debug        Turns debugging on
  --version      Show version
"""
import flask
import docopt

app = flask.Flask(__name__)

@app.route("/")
@app.route("/<path:name>")
def hello(name='World'):
    return flask.render_template('hello.html', name=name)

@app.route("/health")
def health():
    return 'OK'

if __name__ == "__main__":
    args = docopt.docopt(__doc__, version="hello-docker v1.0")
    print(args)
    app.run(
        host=args['--host'],
        port=int(args['--port']),
        debug=args['--debug']
    )
