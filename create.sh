#!/bin/sh
DATA=./list.txt
COUNT=1

while read line
do
	((COUNT++))
done < $DATA

echo $COUNT >> $DATA


docker compose run --rm display npx create-next-app project$COUNT --ts

cat << EOF > project$COUNT/Makefile
.PHONY: dev
dev:
	yarn dev
EOF

docker-compose exec display bash -c "cd project$COUNT && make dev"
