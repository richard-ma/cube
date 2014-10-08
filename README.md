cube
====

Tutorial Site

# SYSTEM REQUIREMENTS

sudo apt-get install nodejs # JavaScript Runtime
sudo apt-get install libxml2-dev libxslt1-dev # For RSS Parse

bundle install
rake db:migrate

# DEVELOPER INSTALL
sudo apt-get install libmysqlclient-dev # For Mysql connection
建立cube, cube-dev, cube-test三个数据库，并对用户授予除grant外的所有权限

bundle config build.nokogiri --use-system-libraries
bundle install --without production
