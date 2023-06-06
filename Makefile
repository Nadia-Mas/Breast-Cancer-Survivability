
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	python -m pytest -vv  --cov test_cornlp.py

lint:
	pylint --disable=R,C *.py 
	#docker run --rm -i hadolint/hadolint < Dockerfile
format:
	black *.py 

all: install lint test format
