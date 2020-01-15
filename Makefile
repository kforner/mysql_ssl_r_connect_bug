build:
	docker-compose build

start:
	docker-compose up
	docker-compose start

stop:
	docker-compose down -t 0

rbash:
	docker-compose exec r bash

logs:
	docker-compose logs