all:
	docker-compose -f ./srcs/docker-compose.yml up --build -d
back:
	docker-compose -f ./srcs/docker-compose.yml up --build
up:
	docker-compose -f ./srcs/docker-compose.yml up

containers_status:
	docker-compose -f ./srcs/docker-compose.yml ps
images_status:
	docker-compose -f ./srcs/docker-compose.yml images

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean:
	docker system prune -af

fclean:
	docker system prune -af && rm -rf /home/aelandal/data/wordpress/* && rm -rf /home/aelandal/data/mariadb/* && docker volume rm srcs_mariadb srcs_wordpress
