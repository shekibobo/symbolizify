# Symbolizify

Converts the given string to a symbol-style symbol.

Adds `ActiveSupport::Inflectors#symbolizify`, `String#symbolizify!`, and `String#symbolizify`.

This is intended to be a kind of inverse of `#humanize`, but a little more robust than [dehumanize](https://github.com/AndyObtiva/dehumanize). This is a strong symbolizer, converting hyphens, non-standard characters, spaces, camelcase, etc. to underscored strings. The main inspiration for this came after finding that `#dehumanize` did not support dehumanizing strings containing numbers, e.g.

```ruby
"Abstract Object 1".dehumanize  # => "abstract_object1"
"Abstract Object 1".symbolizify # => "abstract_object_1"
```

The name `symbolizify` was chosen in order to avoid naming collisions or confusion with other `symbolize` gems in the market, and to reinforce the idea that this doesn't actually convert a string to a symbol, but rather converts it to a symbol-style string.

## Installation

Add this line to your application's Gemfile:

    gem 'symbolizify', '>= 0.1.0'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install symbolizify

## Usage

Call symbolizify on any string to turn it into a symbol-style string! Removes non-word/non-digit characters, reduces everything to lowercase with underscores separating words and numbers, e.g.

```ruby
'Personal Phone  '.symbolizify          # => 'personal_phone',
'Home address'.symbolizify              # => 'home_address',
'HatRack'.symbolizify                   # => 'hat_rack',
'Who is _why?'.symbolizify              # => 'who_is_why',
'Person 1'.symbolizify                  # => 'person_1',
'Personel! #231'.symbolizify            # => 'personel_231',
'Wang chung !'.symbolizify              # => 'wang_chung',
'Shekibobo is great!'.symbolizify       # => 'shekibobo_is_great',
'test.subject@example.com'.symbolizify  # => 'test_subject_example_com'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
