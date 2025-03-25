# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndo-vale <ndo-vale@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/23 13:18:02 by ndo-vale          #+#    #+#              #
#    Updated: 2025/03/24 18:24:04 by ndo-vale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Old stable gets the previous stable version
FROM debian:oldstable

# Makes sure everything is up to date and then installs nginx
RUN apt update -y && apt upgrade -y && apt install -y nginx openssl

RUN mkdir -p /etc/nginx/tls

COPY ./conf/default /etc/nginx/sites-available/.
COPY ./nginx_secrets/* /etc/nginx/tls/.

# The entrypoint of the container is running nginx
# -g allows us to set Global directives. The one we want to set is "daemon off".
# Nginx runs as a daemon by default. This means that the nginx process becomes detached.
# We do not want this, because that way the container exits as soon as that happens.
# What we want is for it to run in the foreground, as the container alreadt runs hidden.
ENTRYPOINT ["nginx", "-g", "daemon off;"]
