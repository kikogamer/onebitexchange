# OneBitExchange

Find your exchange rate!

Application designed in order to find your exchange rate between currencies

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have docker and docker-compose installed

```
For more information, please see https://docs.docker.com/install/ 
```

### Installing

Access the project folder in your terminal enter the following

```
$ docker-compose build
```

```
$ docker-compose run --rm app bundle install
```

```
$ docker-compose run --rm app bundle exec rails db:create
```

```
$ docker-compose run --rm app bundle exec rails db:migrate
```
You need install project dependecies

```
$ docker-compose run --rm app bundle exec yarn add jquery
```
```
$ docker-compose run --rm app bundle exec yarn add bootstrap
```

After that for test the installation enter the following to up the server

```
$ docker-compose up
```

Open your browser and access localhost:3000 to see the home page

The conversion will be failed because you must configure api credentials on environment variables.

## Running the tests

To run the tests run the following in your terminal

```
$ docker-compose run --rm app bundle exec rspec
```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - The web framework used
* [REST Client](https://github.com/rest-client/rest-client/) - The rest client used
* [WebMock](https://github.com/bblimke/webmock/) - Library for stubbing and setting expectations on HTTP requests in Ruby
* [Materialize](https://github.com/mkhairi/materialize-sass) - The css framework used
* [PostgreSQL](https://www.postgresql.org/) - SGDB

## Authors

* **Ronaldo Carneiro da Silva Filho** - *Initial work* - [kikogamer](https://github.com/kikogamer)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
