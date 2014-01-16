# Base62

Base62 monkeypatches Integer to add an Integer#base62_encode instance method to encode an integer in the character set of 0-9 + A-Z + a-z. It also monkeypatches String to add String#base62_decode to take the string and turn it back into a valid integer.

## Installation

```bash
$ gem install base62
```

## Usage

```ruby
require 'base62'

123.base62_encode
# => "1z"

"funky".base62_decode
# => 619367412
```

## Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new pull request

## Thanks

* [Lasse Bunk](https://github.com/lassebunk) for totally refactoring everything and bringing it into the modern age.
* [Saadiq Rodgers-King](http://github.com/saadiq) for making it work with Ruby 1.9.
* [Derrick Camerino](https://github.com/robustdj) for adding a Gemspec and prompting me to clean stuff up.

Copyright (c) 2008-2014 [JT Zemp](https://github.com/jtzemp), released under the [MIT License](https://github.com/jtzemp/base62/blob/master/LICENSE.txt)
