# README

Update libs:

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

Ruby:

sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.5.1
rvm use 2.5.1 --default
ruby -v

NodeJs:

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

Rails: 

gem install rails -v 5.2.0

 
Mysql:

sudo apt-get install mysql-server mysql-client libmysqlclient-dev

Для кроссбраузерности:

gem 'autoprefixer-rails'

Для валидации файлов:

gem 'active_storage_validations'


Реалізував весь функціонал який зазничений в завданні.
Можливо дещо і впустив, але то я не спеціально. 
Що не реалізував:
Я не маю досвіду роботи з react React/Redux/React-router/WebSockets, дуже хочу навчитись, але поки не було нагоди з ними працювати.
Я хотів зробити кращу стилізацю (те що зараз на сайті це за пару годин накидав) та додати деякий додатковий функціонал наприклад зображення до статаей можливо Ckeditor для кращого оформлення статей, особистий кабінет для користувачів та розподіл можливостей між різними типами користувачів.

