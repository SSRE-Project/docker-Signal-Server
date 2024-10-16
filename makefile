.PHONY: rebuild
.PHONY: rebuild
.PHONY: podman-reload
.PHONY: podman-reload

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