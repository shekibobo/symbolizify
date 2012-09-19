# Symbolizify

Converts the given string to a symbol-style symbol.

This is intended to be a kind of inverse of `#humanize`, but a little more robust than [dehumanize](https://github.com/AndyObtiva/dehumanize). This is a strong symbolizer, converting hyphens, non-standard characters, spaces, camelcase, etc. to underscored strings. The main inspiration for this came after finding that `#dehumanize` did not support dehumanizing strings containing numbers, e.g.

```ruby
"Abstract Object 1".dehumanize # => "abstract_object1", not "abstract_object_1"
```

In fact, `dehumanize` was the inspiration, and the overall design of the gem was inspired by this prior art.

## Installation

Add this line to your application's Gemfile:

    gem 'symbolizify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install symbolizify

## Usage

Call symbolizify on any string to turn it into a symbol-style string! Removes non-word/non-digit characters (except for ! and ? if it's at the end of the string), reduces everything to lowercase with underscores separating things, e.g.

```ruby
'Personal Phone'.symbolizify            # => 'personal_phone',
'Home address'.symbolizify              # => 'home_address',
'HatRack'.symbolizify                   # => 'hat_rack',
'Who is _why?'.symbolizify              # => 'who_is_why?',
'Person 1'.symbolizify                  # => 'person_1',
'Personel! #231'.symbolizify            # => 'personel_231',
'Shekibobo is great!'.symbolizify       # => 'shekibobo_is_great!'
'test.subject@example.com'.symbolizify  # => 'test_subject_example_com'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
