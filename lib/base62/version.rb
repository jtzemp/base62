module Base62
  module VERSION #:nodoc:
    MAJOR = 0
    MINOR = 1
    TINY  = 1

    STRING = [MAJOR, MINOR, TINY].join('.')
    self
  end
end
