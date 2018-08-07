# Coffee::Cli::App
![Image of coffee beans](https://images.pexels.com/photos/34085/pexels-photo.jpg?auto=compress&cs=tinysrgb&h=350)

This CLI app receives user input, scrapes the Wikipedia coffee page for information about Coffee roasts, and returns information about the coffee roast.

## Build Status

[![Build Status](https://travis-ci.org/epunx2/coffee-cli-app)]

## Code Style

[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)

## Screenshots

## Tech/framework used

  - **[Ruby](https://www.ruby-lang.org/en/)**

## Features

  - Command Line Interface
  - Scrapes Wikipedia
  - Creates Coffee Roast Objects
  - Receives input from user
  - Returns Coffee Roast Objects

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coffee-cli-app'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coffee-cli-app

## Usage

After installing:

1. Switch to the coffe-cli-app/coffee-cli-app directory.

2. Type "/bin/coffee-cli-app" in the console.

3. Type "yes" at the first question prompt to continue. Otherwise the application will close.

4. Enter the following at the next prompt:
   - "List": prints a list of available options
   - "Light", "Medium", or "Dark": returns information regarding the roasts
   - "Exit": to close the application

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/epunx2/coffee-cli-app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Coffee::Cli::App project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/epunx2/coffee-cli-app/coffee-cli-app/CODE_OF_CONDUCT.md).
