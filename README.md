# crud-email-back

Simple rails app with login, authentication and a service to send mails for users.

Due to time, there are some spec tests that could not be implemented.

## Get started

### Required instalations
### Clone the repo

```shell
git clone https://github.com/matgf/crud-email-app.git
cd crud-email-app
```

### ruby

Check if you have it installed
```shell
ruby -v
```

install ruby with the last version at the moment 3.1.2 or use rvm:

```shell
rvm install ruby-3.1.2
```

## Database Schema

maas-back uses postgres
```
psql --version
version: psql (PostgreSQL) 12.12
```
### Install dependencies of the project

```shell
bundle install
```

### Initial configuration

```shell
rails db:create
rails db:migrate
```
## Workers
To see the sidekiq dashboard, go to http://localhost:3000/sidekiq/

In the app, when you click the button send email, you will receive the mail in your inbox


### Tests

run on terminal:

```shell
bundle exec rspec
```

### Starting the Server

```shell
rails s
```
This will run the server at port 3000 by default.

### Starting Sidekiq

```shell
bundle exec sidekiq
```