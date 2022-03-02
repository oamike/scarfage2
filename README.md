# Scarfdom

Table of Contents


[Overview](#Overview)

[Rails Environments](#RailsEnvironments)

[Set Up](#SetUp)

[Running Tests](#RunningTests)

<a name="Overview"/>

## Overview

 is a backend API that manages user auth and access control, items (scarves), item tags, and user items collections.

As the system is being built, this project will also provide rudimentary user interfaces that allow admins and moderators to view and review content.

### Web Service Endpoints

#### Development (local) Stack

Requires rails running locally

* Local develoment URL [http://localhost:3000](http://localhost:3000)

#### Dev Stack

not yet available

* Server access [https://dev.scarfdom.com](https://dev.scarfdom.com)

#### Production Stack

not yet available

* URL [https://Scarfdom.com](https://scarfdom)

### Service Details

* Ruby version

  * 2.6.5

* System dependencies

  * RVM
  * MySQL (local and AWS RDS instance)


<a name="RailsEnvironments"/>

## Rails Environments

Below is a description of the different rails environments in the Scarfdom project.  To run in a specific rails environment, prepend your "rails" commands with "RAILS_ENV=env ", where "env" is the environment you intend to use.

Examples:
```
    $ RAILS_ENV=development rails db:migrate
```
### development
The "development" environment is used by developers running their scarfdom web service locally.  Connect to it via https://localhost:3000. This environment uses a local MySQL database.
### dev
The "dev" environment is what we use on our dev stack. This environment is limited to testing updates prior to deploying to production.
### production
The "production" environment is not yet configured.
### test
The "test" environment is used to run our unit and functional tests (rspec) locally, and in our jenkins jobs prior to deploying to dev.

<a name="SetUp"/>

## SetUp

These are the steps you need to complete to get Scarfdom running locally on your development machine. Theses steps assume MacOS, RVM, and MySQL are already set up.

* clone this repo
  * cd into scarfdom folder (ensure rvm creates the scarfdom gemset)
  * gem install bundler
  * bundle install
  * rails db:setup
  * rails db:seed

Note: if your local MySQL root password is not 'password', you will need to edit config/database.yml - DO NOT check in your database.yml, if you changed this line...

* start the rails server in "development" environment

  ~~~
  $ rails server
  ~~~

  * Open the site locally by browsing to:
    * End User UI: [http://localhost:3000](http://localhost:3000)
    * You can see Users using [http://localhost:3000/users](http://localhost:3000/users)


<a name="RunningTests"/>

# Running Tests

Test suite uses Rspec, to run locally, type the command 'rspec'

~~~
$ rspec
~~~
