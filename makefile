.PHONY: reload
.PHONY: rebuild
.PHONY: podman-reload
.PHONY: podman-rebuild

reload:
	docker compose down
	docker compose up -d

rebuild:
	docker compose down
	docker compose up --build -d

podman-reload:
	podman compose down
	podman compose up -d

podman-rebuild:
	podman compose down
	podman compose up --build -d

resolve-permission:
	sudo chown -R $(whoami):$(whoami) ./postgresql
	sudo chmod -R 775 ./postgresql