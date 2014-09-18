Listen 80

<VirtualHost *:80>
  LoadModule php5_module /home/ubuntu/.phpenv/versions/5.5.7/libexec/libphp5.so

  DocumentRoot /home/ubuntu/RDTOM-Source/html
  ServerName dev.rollerderbytestomatic.com
  <FilesMatch \.php$>
    SetHandler application/x-httpd-php
  </FilesMatch>
</VirtualHost>