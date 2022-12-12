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
.PHONY: dev git
dev:
	yarn dev
git:
	git add .
	git commit -m 'make file up'
	git push -u origin main
EOF

docker-compose exec display bash -c "cd project$COUNT && make dev"
