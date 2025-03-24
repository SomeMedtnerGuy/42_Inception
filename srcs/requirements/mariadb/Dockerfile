# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndo-vale <ndo-vale@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/23 20:14:19 by ndo-vale          #+#    #+#              #
#    Updated: 2025/03/24 18:55:33 by ndo-vale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:oldstable

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY tools/installdb.sh .

RUN mkdir -p /run/mysqld && chmod +x installdb.sh

CMD ["./installdb.sh"]

