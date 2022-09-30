ne:
	docker network ls

in:
	docker network inspect ${name}

up:
	docker-compose up

dd:
	docker-compose down

dv:
	docker-compose down --volumes

ps:
	docker-compose ps -a

db:
	docker-compose exec db sh -c 'mysql -u $$MYSQL_USER -p$$MYSQL_PASSWORD $$MYSQL_DATABASE'

dev:
	cd ${name} && devcontainer open .
