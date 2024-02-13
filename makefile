## develop
dev.init:
	cp .env.example .env
	#mkdir .storage
dev.build:
	./docker/dev/scripts/build.sh
dev.run:
	./docker/dev/scripts/run.sh
dev.into:
	./docker/dev/scripts/into.sh
dev.stop:
	./docker/dev/scripts/stop.sh
dev.down:
	./docker/dev/scripts/down.sh
dev.reload:
	./docker/dev/scripts/stop.sh
	./docker/dev/scripts/run.sh
dev.clean:
	./docker/dev/scripts/down.sh
	./docker/dev/scripts/clean.sh

## production
prod.init:
	cp .env.example .env
	#mkdir .storage
prod.build:
	./docker/prod/scripts/build.sh
prod.run:
	./docker/prod/scripts/run.sh
prod.into:
	./docker/prod/scripts/into.sh
prod.stop:
	./docker/prod/scripts/stop.sh
prod.down:
	./docker/prod/scripts/down.sh
prod.reload:
	./docker/prod/scripts/stop.sh
	./docker/prod/scripts/run.sh
prod.clean:
	./docker/prod/scripts/clean.sh
