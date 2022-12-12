.PHONY: bash start restart stop git

bash:
	docker compose exec display bash

start:
	docker compose up -d --build

restart:
	docker compose restart display

stop:
	docker compose stop

create:
	bash create.sh

git:
	git add .
	git commit -m 'make file up'
	git push -u origin main