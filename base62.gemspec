$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'base62'
Gem::Specification.new do |s|
    s.name        = %q{base62}
    s.version     = Base62::VERSION
    
    desc   = %q{Base62 monkeypatches Integer to add an Integer#base62_encode
                instance method to encode an integer in the character set of
                0-9 + A-Z + a-z. It also monkeypatches String to add
                String#base62_decode to take the string and turn it back
                into a valid integer.}
    s.summary      = desc
    s.description  = desc

    s.files        = Dir['[A-Z]*', 'lib/**/*.rb', 'test/*.rb']
    s.require_path = 'lib'
    s.test_files   = Dir['test/*.rb']

    s.authors = ["JT Zemp", "Saadiq Rodgers-King", "Derrick Camerino"]
    s.email   = %q{jtzemp@gmail.com}
    s.homepage = "http://github.com/jtzemp/base62"

    s.platform = Gem::Platform::RUBY
    s.rubygems_version = %q{0.1.4}
    s.licenses = ["MIT"]
end

