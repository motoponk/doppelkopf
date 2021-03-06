format:
	pipenv run black . --exclude "/(\.git|\.mypy_cache|\.venv||build|dist|node_modules)/"

run:
	export FLASK_ENV=development && \
	export APP_PROFILE=backend.config.DevelopmentConfig && \
	export FLASK_APP=backend/__init__.py && \
	pipenv run flask run

run_prod:
	export FLASK_ENV=production && \
	export APP_PROFILE=backend.config.ProductionConfig && \
	export FLASK_APP=backend/__init__.py && \
	pipenv run gunicorn --workers=2 backend:app -b :5000

unit:
	pipenv run pytest

mypy:
	pipenv run mypy .

flake8:
	pipenv run flake8 .

serve-frontend:
	pushd frontend && yarn serve && popd
