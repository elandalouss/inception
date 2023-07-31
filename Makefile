all:
	docker-compose -f ./srcs/docker-compose.yml up --build
up:
	docker-compose -f ./srcs/docker-compose.yml up

down:
	docker-compose -f ./srcs/docker-compose.yml down

fclean:
	docker system prune -af && rm -rf /home/aelandal/data/wordpress/* && rm -rf /home/aelandal/data/mariadb/* && docker volume rm srcs_mariadb srcs_wordpress
