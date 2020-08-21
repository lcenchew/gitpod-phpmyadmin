FROM gitpod/workspace-full:latest

USER root

RUN echo "phpmyadmin phpmyadmin/internal/skip-preseed boolean true" | debconf-set-selections \
   && echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" | debconf-set-selections \
   && echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections \
   && apt-get update \
   && apt-get install -y phpmyadmin \
   && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* \
   && chown -R gitpod:gitpod   /etc/phpmyadmin

USER gitpod

# optional: change document root folder. It's relative to your git working copy.
ENV APACHE_DOCROOT_IN_REPO="www"
