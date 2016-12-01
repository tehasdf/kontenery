import sys
from flask import Flask, current_app, render_template_string

app = Flask(__name__)


@app.route('/')
def index():
    data = []
    for path in current_app.extensions['files']:
        try:
            with open(path) as f:
                data.append(f.read().rstrip())
        except (IOError, OSError) as e:
            data.append('{0}: {1}'.format(path, e))
    return render_template_string("""
        Hello world!
        {% for line in data %}
            {{ line }}
        {%- endfor %}
    """, data=data)


files = sys.argv[1:]
app.extensions['files'] = files
app.run(host='0.0.0.0')
