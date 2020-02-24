from flask import Flask, render_template
from flask import request
import subprocess

app = Flask(__name__)

@app.route('/')
def index():
    name = request.args.get("name", "Unknown")
    output=subprocess.check_output("cat /proc/self/cgroup | grep kubepods | sed s/\\\\//\\\\n/g | tail -1", shell=True);
    return render_template("index.html", name=name, pod_id=pod)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)