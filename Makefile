install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_it.py

lint:
	pylint --disable=R,C play.py

all: install lint test