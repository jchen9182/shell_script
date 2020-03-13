#!/bin/bash

# Make Directories
mkdir flask_app
cd flask_app
mkdir docs
mkdir static
mkdir static/styles
mkdir static/js
mkdir templates

# Make HTML
touch templates/index.html
echo "<!DOCTYPE html>
<html>
    <head>
        <meta charset = \"utf-8\">
         <link rel=\"stylesheet\" type=\"text/css\" href=\"static/styles/style.css\">
        <title> TITLE </title>
    </head>

    <body>
        BODY
    </body>
    <script src = \"/static/js/script.js\"></script>
</html>" >> templates/index.html

# Make Flask App
touch app.py
echo "from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route(\"/\")
def hello_world():
    print(__name__) # Printed onto console on refresh
    return render_template(\"index.html\")

if __name__ == \"__main__\":
    app.debug = True
    app.run(\"0.0.0.0\")" >> app.py

# Make CSS
touch static/styles/style.css
echo "body {
  background-color: lightblue;
}" >> static/styles/style.css

# Make JS
touch static/js/script.js
echo "console.log(\"is this linked\")" >> static/js/script.js

# Run
#xdg-open "http://127.0.0.1:5000/"
python3 app.py
