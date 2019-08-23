build:
	mkdir -p dist
	rm -f dist/*
	cp ecs-run-task-waiter dist/

release: build
	ghr ${TAG} dist/
