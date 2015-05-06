### Docker/Composer Rails 4
---

_Fast Rails4 setup for development using Docker and Composer_


Build your app:

`$ docker-compose run web rails new . --force --database=postgresql --skip-bundle`

Adjust Gemfile to reflect javascript runtime

`$ gem 'therubyracer', platforms: :ruby`

Rebuild docker image due to change in Gemfile

`$ docker-compose build`

Boot your app

`$ docker-compose up`

Create your database

`$ docker-compose run web rake db:create`