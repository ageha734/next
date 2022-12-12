.PHONY: bash start restart stop

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