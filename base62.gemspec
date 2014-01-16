lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'base62/version'

Gem::Specification.new do |s|
  s.name          = "base62"
  s.version       = Base62::VERSION
  s.authors       = ["JT Zemp", "Lasse Bunk", "Saadiq Rodgers-King", "Derrick Camerino"]
  s.email         = ["jtzemp@gmail.com", "lasse@bunk.io"]
  s.description   = %q{Base62 monkeypatches Integer to add an Integer#base62_encode
                       instance method to encode an integer in the character set of
                       0-9 + A-Z + a-z. It also monkeypatches String to add
                       String#base62_decode to take the string and turn it back
                       into a valid integer.}
  s.summary       = %q{Monkeypatches Integer and String to allow for base62 encoding and decoding.}
  s.homepage      = "https://github.com/jtzemp/base62"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^test/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
end
