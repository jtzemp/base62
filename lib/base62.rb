require "base62/version"
require "base62/string"
require "base62/integer"

module Base62
  PRIMITIVES = (0..9).collect { |i| i.to_s } + ('A'..'Z').to_a + ('a'..'z').to_a
  
  class << self
    def decode(str)
      out = 0
      str.split(//).reverse.each_with_index do |char, index|
        place = PRIMITIVES.size ** index
        out += PRIMITIVES.index(char) * place
      end
      out
    end

    def encode(int)
      return "0" if int == 0

      rem = int
      result = ''
      while rem != 0
        result = PRIMITIVES[rem % PRIMITIVES.size].to_s + result
        rem /= PRIMITIVES.size
      end
      result
    end
  end
end