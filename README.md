# WebCV

Personal Web CV built with Ruby and Sinatra, using basic HTTP authentication for protected pages, Slim as an HMTL template language, and Postgres for a simple database.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Requires Ruby version 2.5.1, Postgres, and Chromedriver to be installed.

To install Ruby and RVM, use the steps outlined [here](https://github.com/rvm/ubuntu_rvm)
To install Postgres, use the steps outlined [here](http://postgresguide.com/setup/install.html). A database and environmental variables / login details will need to be set up to match / be modified as in config/database.yml file for development. I used PGAdmin3 to look over the database, and can be found [here](https://www.pgadmin.org/).
To install Chromdriver, use the gem chromedriver-helper and follow the steps outlined [here](https://github.com/flavorjones/chromedriver-helper)

### Installing

The app can be run locally from the project root by using

```
$ rackup
```
Then visiting [localhost:9292](localhost:9292) unless another port is specified.

Local database setup can be done using

```
$ rake db:setup
```

The site should run locally with the capability of successfully sending a message through the contact form if completed.

## Running the tests

To run the RSpec tests, in the root of the project folder simply use the below to run all tests:
```
$ rspec
```

## Deployment

Deployment can be done with [Heroku](https://www.heroku.com/). Ensure that an add-on for the Postgres database is completed on push or add this manually before running
```
$ heroku rake db:migrate
```
This should make the production site database functional.

## Built With

* [Slim](http://slim-lang.com/) - HTML template language

## Contributing

N/A

## Versioning

N/A

## License

N/A

## Acknowledgments / Authors

* Credit for the inspiration and initial guidance goes to [Dan Steele](https://github.com/dansteele)
