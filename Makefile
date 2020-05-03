default: run

build:
	docker build -t cs50/bookdown .

rebuild:
	docker build --no-cache -t cs50/bookdown .

run:
	docker run -it -P --rm --security-opt seccomp=unconfined -v "$(PWD)":/mnt cs50/bookdown
