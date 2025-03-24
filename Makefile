# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndo-vale <ndo-vale@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/23 13:02:08 by ndo-vale          #+#    #+#              #
#    Updated: 2025/03/24 15:43:39 by ndo-vale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: up

up:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

start:
	docker compose -f ./srcs/docker-compose.yml start

stop:
	docker compose -f ./srcs/docker-compose.yml stop

fclean: stop down
	docker rmi srcs-wordpress
	docker rmi srcs-nginx
	docker rmi srcs-mariadb

re: fclean up
