pip-compile:
	pip-compile requirements.in

venv-reqs:
	python3 -m pip install --upgrade pip && python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt 

install-jupyter-kernel:
	source .venv/bin/activate && python -m ipykernel install --user --name=.venv