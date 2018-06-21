# AuthorizeLink

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/authorize_link`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'authorize_link'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install authorize_link

## Usage

This is a rails view helper.  It makes it easy to create a link that is conditional on a call to authorize_action(controller, action).  If true the string returned is HTML with a link to link_path with text link_name

authorize_link(controller, action, link_name, link_path).

Depends on your implementation of authorize_action()

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/authorize_link.
