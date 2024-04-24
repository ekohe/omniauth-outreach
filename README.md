# Omniauth::Outreach

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add omniauth-outreach

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install omniauth-outreach

## Usage

```
  config.omniauth :outreach, client_id: CLIENT_ID, client_secret: CLIENT_SECRET,
                  scope: YOUR_SCOPE,
                  strategy_class: ::OmniAuth::Strategies::Outreach,
                  redirect_uri: YOUR_CALLBACK_URI
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ekohe/omniauth-outreach.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
