FROM gitpod/workspace-full

RUN echo "phpmyadmin phpmyadmin/internal/skip-preseed boolean true" | debconf-set-selections \
   && echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect" | debconf-set-selections
   && echo "phpmyadmin phpmyadmin/dbconfig-install boolean false" | debconf-set-selections \
   && apt-get install -y phpmyadmin
   && chown -R gitpod:gitpod   /etc/phpmyadmin
