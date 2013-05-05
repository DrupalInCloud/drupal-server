# sync our configuration with /etc
aptitude install rsync apache2 mysql-server nginx memcached php5-memcached php5-gd

rsync -av ./common/apache2/ /etc/apache2/
rsync -av ./common/mysql/ /etc/mysql/
rsync -av ./common/nginx/ /etc/nginx/
rsync -av ./common/php5/ /etc/php5/
cp ./memcached.conf /etc/memcached.conf

rsync -av ./nginx-apache-memcached-apc-mysql/apache2/ /etc/apache2/
rsync -av ./nginx-apache-memcached-apc-mysql/nginx/ /etc/nginx/

mkdir /var/www/sites/default /var/www/sites/default/html /var/www/sites/default/logs

