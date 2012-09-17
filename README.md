# Symbolizify

Converts the given string to a symbol-style symbol.

## Installation

Add this line to your application's Gemfile:

    gem 'symbolizify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install symbolizify

## Usage

```ruby
"business_as_usual".symbolizify # => :business_as_usual
"Business Model 1".symbolizify  # => :business_model_1
"Business as usual".symbolizify # => :business_as_usual
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
