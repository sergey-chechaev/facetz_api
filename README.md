# FacetzApi

Gem for making request facetz.net DMP

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'facetz_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install facetz_api

## Usage

Configure gem credentials 

```ruby
 FacetzApi.configure do |config|
    config.user = ENV['FACETZ_USER']
    config.key = ENV['FACETZ_KEY']
    config.version = "v1"
 end
```
Make request

```ruby
  conn = FacetzApi::Client.new
  result = conn.lookup(ids: ["3134ac45-d165-43c9-83c6-bc8f79202348"])
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/facetz_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

