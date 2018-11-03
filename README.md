# DreamCatcher Sinatra App

DreamCatcher is a simple dream journal Sinatra app that allows users to create an account and log dreams. Dreams can be made private or shared publicly.  The app has minimal styling using [Twitter Bootstrap](http://getbootstrap.com).

A live demo of this app can be found at [dreamcatcher-sinatra.herokuapp.com](http://dreamcatcher-sinatra.herokuapp.com).

## Installation

Fork and clone this repository.

Run `$ bundle install` to install dependencies.
Migrate database with `$ rake db:migrate`.
Optionally, seed database with `$ rake db:seed`.

**Note:** If you get errors while doing any of the above you may need to run the following within your terminal: `$ export ENV SINATRA_ENV="development"`. This will set the SINATRA_ENV environment variable to development, which tells the app to use a sqlite database rather than postgresql.

## Usage

To play around with the app start up a server by running `$ shotgun` from within the root directory and visit the address given by the server. The default shotgun server listens at localhost:9393

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mattetress/dreamcatcher-sinatra-app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The application is available as open source under the terms of the [MIT License](https://github.com/mattetress/dreamcatcher-sinatra-app/blob/master/LICENSE.txt).

## Code of Conduct

Everyone interacting in the DreamCatcher project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mattetress/dreamcatcher-sinatra-app/blob/master/CODE_OF_CONDUCT.md).
