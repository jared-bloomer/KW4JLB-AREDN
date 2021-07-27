# Pre-Requisite

Install a Virtual Environment
`pip install virtualenv`

Activate the Virtual Environment
`python -m virtualenv env` If you are using Python 2.x

`python3 -m venv env` If you are using Python 3.x+

Finally
`source env/bin/activate`

Install Sphinx
`pip install -U sphinx`

If using the sphinx_rtd_theme, you will also need to run 
`pip install sphinx_rtd_theme`

# Process

For a new repo, run `sphinx-quick-start` to generate the directories and files. 

Make your changes in the `source` directory. You should only need to modify `.rst` files for content and `conf.py` for themes.

Once done run the `publish.sh` script to compile the sphinx code into HTML files and move them to the docs folder. Once that is all complete the changes will automatically be pushed to the git repo and go live on your github pages site. 
