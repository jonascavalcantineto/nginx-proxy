FROM nginx
LABEL MAINTAINER="Jonas Cavalcanti <jonascavalcantineto@gmail.com>"
LABEL app_type="web"
LABEL app_state="prod"
RUN apt-get update
RUN apt-get install -y \
                    curl \
                    vim  \
                    iputils-ping 
                    
ADD	confs/nginx.conf	    /etc/nginx/nginx.conf
ADD	confs/zones/*.conf		/etc/nginx/conf.d/

