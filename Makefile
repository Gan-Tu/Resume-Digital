all:
	@echo "MAKE YOUR CHOICES:\nmake run/status/commit/commit-all/amend/amend-all/deploy/add-unstaged/add-all"

run:
	open index.html

status:
	git status

add-unstaged: status
	git add -u

add-all: status
	git add -A

commit: add-unstaged
	git commit

commit-all: add-all
	git commit

amend: add-unstaged
	git commit -amend

amend-all: add-all
	git commit -amend

deploy:
	git checkout heroku
	git merge master
	git push
	git checkout master
