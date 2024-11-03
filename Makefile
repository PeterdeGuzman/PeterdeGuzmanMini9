install:
	pip install --upgrade pip && pip install -r requirements.txt

# format:
# 	black *.ipynb

lint:
	ruff check *.ipynb

test: 
	python -m pytest -vv --nbval -cov=mylib -cov=main  *.ipynb

all: install format lint test 