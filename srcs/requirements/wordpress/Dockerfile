# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndo-vale <ndo-vale@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/23 14:29:41 by ndo-vale          #+#    #+#              #
#    Updated: 2025/03/23 21:00:29 by ndo-vale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:oldstable

# The folder /run/php must be added manually because php sucks
RUN  apt update -y && apt upgrade -y \
	&& apt install -y php7.4-fpm php-mysqli curl \
	&& mkdir /run/php

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/.
COPY tools/wpinstall.sh .
RUN chmod +x wpinstall.sh

ENTRYPOINT ["./wpinstall.sh"]

