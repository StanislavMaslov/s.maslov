default: build run

build: 
	docker build -t intern .

run: 
	docker run --rm -p 80:80 intern
