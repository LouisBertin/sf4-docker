up:
	@cd docker; \
	docker-compose up -d --build;

down:
	@cd docker; \
	docker-compose down;

sf-install:
	@if [ -a www/bin ] ; \
    then \
		echo "symfony is already installed ! :)" ; \
	else \
		mkdir www/ ; \
		cd www; \
		composer create-project symfony/skeleton ./ ; \
		echo "symfony is installed ! :)" ; \
    fi;

sf-remove:
	@rm -rf www/ ;
	@echo "symfony app is removed";