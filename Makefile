# Golang
.PHONY: go-test
go-test:
	docker compose run --rm --no-deps golang make test

go-run-exercise-%:
	docker compose run --rm --no-deps golang make run-exercise-$*
go-test-exercise-%:
	docker compose run --rm --no-deps golang make test-exercise-$*

.PHONY: go-goimports
go-goimports:
	docker-compose run --rm --no-deps golang make goimports
