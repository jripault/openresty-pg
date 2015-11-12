wget http://openresty.org/download/ngx_openresty-${NGINX_VERSION}.tar.gz && \
wget https://github.com/arut/nginx-dav-ext-module/archive/master.zip && \
  unzip master.zip && \
  tar xzvf ngx_openresty-${NGINX_VERSION}.tar.gz && \
  cd ngx_openresty-${NGINX_VERSION}/ && \
  ./configure --with-http_postgres_module --with-http_dav_module --add-module=../nginx-dav-ext-module-master && \
  make && \
  make install && \
  cd .. && \
  mkdir -p /etc/nginx/conf.d /etc/nginx/ssl /var/log/nginx /public && \
  rm -rf ngx_openresty-${NGINX_VERSION}*
