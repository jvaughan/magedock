FROM ubuntu:12.04
MAINTAINER Brandon Rice <brice84@gmail.com>

# Because docker replaces /sbin/init: https://github.com/dotcloud/docker/issues/1024
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install mysql-server

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN /usr/bin/mysqld_safe & \
    sleep 10s && \
    mysql -e "GRANT ALL ON *.* to 'root'@'%'; FLUSH PRIVILEGES"
    mysql -e "GRANT ALL ON magento_dev.* to 'magento_dev'@'%' with password 'magento_dev'; FLUSH PRIVILEGES"

EXPOSE 3306

VOLUME ["/var/lib/mysql", "/var/log/mysql"]

CMD ["mysqld_safe"]