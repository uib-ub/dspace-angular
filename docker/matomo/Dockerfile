# This image is needed for an unpriveleged version of matomo
# It only updates the port for startup
# user instruction is not added, but the default www user (33?)
# id can be used from a k8s platform

FROM matomo:5-apache
ARG MATOMO_PORT=8135
RUN   sed -i '/^\s*Listen 80/c\Listen $MATOMO_PORT' /etc/apache2/*.conf; \
      sed -i '/^\s*<VirtualHost \\*:80>/c\\<VirtualHost \*:$MATOMO_PORT>' /etc/apache2/sites-available/000-default.conf; \
      tail -n200  /etc/apache2/sites-available/000-default.conf

