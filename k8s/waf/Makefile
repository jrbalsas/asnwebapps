IMAGE=asn/modsecurity:v1
DOCKERHUBIMAGE=jrbalsas/modsecurity:latest

dev: build 
	docker compose up -d
	docker compose ps
build: clean 
	docker compose build 
	docker tag $(IMAGE) $(DOCKERHUBIMAGE)
	@echo  Imagen $(IMAGE) creada
clean: cleandependencies
	-docker compose down 
	-docker rmi $(IMAGE)
	@echo Imagen $(IMAGE) borrada
public: build
	-docker push $(DOCKERHUBIMAGE)
	@echo Imagen $(DOCKERHUBIMAGE) publicada en docker hub
cleandependencies:
	-
mon: monitor
monitor:
	docker stats