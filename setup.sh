echo "create database wordpress" | mysql -u root
rm -rf /etc/apache2/sites-available/000-default.conf
cp ./000-default.conf /etc/apache2/sites-available/000-default.conf
mysql wordpress < ./bryce_blog_gcp.sql 
rm -rf /var/www/html/wp-config.php
mv /var/www/html/wp-config-gcp.php /var/www/html/wp-config.php