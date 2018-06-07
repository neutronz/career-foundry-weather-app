# Weather Service Interview

### Description

Basic weather application that retrieves the current weather from the OpenWeather API

### Implemention Notes and Improvements

- I've configured the application to use webpacker and ES6 however there's not a lot of javascript here to be used. In a full application, I'd use a component based framework like React.
- The weather service is wrapped in a service object. There are stubbed tests for this and normally these would be built first.
- The weather model is a database model which allows for some lightweight caching. The data is refreshed at minimum every 20 minutes and this should be moved to a config variable.
- The result is only in fahrenheit. I'd definitely add some component and javascript to switch between fahrenheit and celcius.
- A nice addition is to use the user's current location via the javascript api and then show the current location's weather by default.

## Getting Started

Copy config/application.yml.sample file to config/application.yml, this is where your OpenWeather API key can be added.

Install Ruby2.4+.
Install Bundler:

```
$ gem install bundler
```

Run bundle install to install all required gems

```
$ bundle install
```

Build your local databases

```
$ bundle exec rails db:create db:migrate
```

```
$ bundle exec rails s
```

Point your browser to localhost:3000

## Development

To run the rspec test suite:

```
$ bundle exec rspec
```
