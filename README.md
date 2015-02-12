# Web::Console::Rake

This enable invoke Rake task on web-console REPL.

## ScreenCast

![web-console-rake](https://cloud.githubusercontent.com/assets/116996/6167767/20e28a5e-b302-11e4-934e-4430969a6805.gif)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'web-console-rake'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install web-console-rake

## Usage

You can call `rake(taskname)` method on web-console REPL.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment. 

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/joker1007/web-console-rake/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
