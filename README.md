cube
====
[![Build Status](https://travis-ci.org/richard-ma/cube.png?branch=master)](https://travis-ci.org/richard-ma/cube)

Tutorial Site

# SYSTEM REQUIREMENTS
sudo apt-get install nodejs # JavaScript Runtime

sudo apt-get install libxml2-dev libxslt1-dev libcurl3 libcurl3-gnutls libcurl4-openssl-dev # For RSS Parse

# INSTALLATION
bundle install

rake db:migrate

# DEVELOPER INSTALLATION
sudo apt-get install libmysqlclient-dev # For Mysql connection

建立cube, cube-dev, cube-test三个数据库，并对用户授予除grant外的所有权限

bundle config build.nokogiri --use-system-libraries

bundle install --without production
