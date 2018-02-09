all:
	@echo "MAKE YOUR CHOICES:\nmake run/status/commit/commit-all/amend/amend-all/deploy/add-unstaged/add-all"

run:
	open index.html

status:
	git status

add-unstaged:
	git add -u

add-all:
	git add -A

commit: add-unstaged
	git commit
	git status

commit-all: add-all
	git commit
	git status

amend: add-unstaged
	git commit -amend

amend-all: add-all
	git commit -amend

deploy:
	git checkout heroku
	git merge master -m "merge changes from master for new deployment"
	git push
	git checkout master
