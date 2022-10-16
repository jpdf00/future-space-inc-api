# Future Space Inc Api

> Future Space Inc Api is an api developed to facilitate the management and visualization of rocket's launch informatio in a simple and objective way!.

## Documentation 
- [Future Space Inc Doc](https://documenter.getpostman.com/view/17032921/2s847BVGEf)

## Built With

- Ruby 3.1.2
- Rails 7.0.4
- Tested with:
  - Rspec
  - shoulda-matchers
  - factory-bot
- Database with:
  - PostgreSQL 13
- Background Jobs with:
  - Sidekiq
  - Redis 6.2

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

- Ruby 3.1.2
- Rails 7.0.4
- Yarn
- PostgreSQL 13
- Redis 6.2
  - if you have Docker installed simply run `docker-compose up` after cloning the project

### Setup

- On the top of this repo click on the button named "Clone"
- Copy the HTTP URL or SSH.
- On the terminal type `git clone <copied-value>` where <copied-value> is the value you copied on the previous step.
- On the terminal `cd` to the folder you cloned.

### Install

- Open the file 'database.yml' on the folder 'config'
- On development: and on test: change the values of username: and password: to the username and password of your local postgres server.
- On the terminal type `rails db:create`.
- On the terminal type `rails db:migrate`.

### Usage

- On the terminal type `rails s`
- if you have Docker installed run `docker-compose up` to start redis
- On the terminal type `bundle exec sidekiq`

### Run tests

- On the terminal `cd` to the folder you just cloned.
- On the terminal type `rspec`.

## Authors

👤 **João Paulo Dias França**

- GitHub: [@jpdf00](https://github.com/jpdf00)
- LinkedIn: [João Paulo Dias França](https://www.linkedin.com/in/jpdf00/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jpdf00/future-space-inc-api/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Challenge "Back-End Challenge 20210221" provided by Coodesh

