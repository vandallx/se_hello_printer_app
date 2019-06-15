deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

test:
	.PHONY: test

run:
	PYTHONPATH=. py.test --verbose -s

docker_build:
	docker build -t hello-world-priner .
