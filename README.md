# Omniauth::PrayerLetters

prayerletters.com strategy for OmniAuth 1.0

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-prayer-letters'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-prayer-letters

## Usage

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :prayer-letters, ENV['PRAYER_LETTERS_KEY'], ENV['PRAYER_LETTERS_SECRET']
end
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
