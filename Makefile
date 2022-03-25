dist: myrepos_utils/*.py myrepos_utils/tests/*.py
	python -m build

black: myrepos_utils/*.py myrepos_utils/tests/*.py
	black $?

clean:
	rm -rf dist

install:
	pip install --force-reinstall dist/myrepos_utils*.whl

tarball:
	python -m build --sdist --wheel

covtest:
	pytest -v --cov=myrepos_utils --cov-report=term-missing

test:
	pytest -v
