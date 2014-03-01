require "base62/version"
require "base62/string"
require "base62/integer"

module Base62
  PRIMITIVES = (0..9).collect { |i| i.to_s } + ('A'..'Z').to_a + ('a'..'z').to_a
  
  class << self
    def decode(str)
      out = 0
      str.chars.reverse.each_with_index do |char, index|
        place = PRIMITIVES.size ** index
        out += PRIMITIVES.index(char) * place
      end
      out
    end

    def encode(int)
      raise ArgumentError, "Can't Base62 encode negative number (#{int} given)" if int < 0
      return "0" if int == 0

      result = ''
      while int > 0
        result.prepend PRIMITIVES[int % PRIMITIVES.size]
        int /= PRIMITIVES.size
      end

      result
    end
  end
end