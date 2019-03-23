USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-build:
	docker-compose build

app-bash:
	docker-compose run --user=$(USER) app bash

nginx-bash:
        docker-compose run --user=$(USER) nginx bash

development-setup-env:
	ansible-playbook ansible/development.yml -i ansible/development -vv
