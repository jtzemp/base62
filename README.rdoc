== DESCRIPTION:

Base62 monkeypatches Integer to add an Integer#base62_encode instance method to encode an integer in the character set of 0-9 + A-Z + a-z. It also monkeypatches String to add String#base62_decode to take the string and turn it back into a valid integer.

== INSTALL:

* sudo gem install base62

== USAGE:

  require 'base62'

  123.base62_encode
  => "1z"
  
  "funky".base62_decode
  => 619367412

== THANKS:

* Saadiq Rodgers-King (http://github.com/saadiq) for making it work with Ruby 1.9.
* Derrick Camerino (https://github.com/robustdj) for adding a Gemspec and prompting me to clean stuff up.

== LICENSE:

(The MIT License)

Copyright (c) 2008 JT Zemp & Thrive Information Solutions

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.