FROM gitpod/workspace-full

RUN cd /workspace; mkdir public; cd public; \
    git clone --depth=1 https://github.com/phpmyadmin/phpmyadmin.git; \
    cd phpmyadmin; composer update --no-dev; yarn install; \
    cp config.sample.inc.php config.inc.php
    
