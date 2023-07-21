# ---------------------------------
# variables





# End------------------------------


build:
	rm -rf ./dist/*.whl ./dist/*.tar.gz
	poetry build

init:
	poetry install
	poetry run pre-commit install

runprec:
	poetry run pre-commit run -a




# ---------------------------------
# bump2version
newver-patch:
	poetry run bump2version patch

newver-minor:
	poetry run bump2version minor

newver-major:
	poetry run bump2version major
# End------------------------------




# ---------------------------------
# mkdocs
mkdocs-serve:
	poetry run mkdocs serve

mkdocs-build:
	poetry run mkdocs build -d ./mkdocs_site -c

# End------------------------------