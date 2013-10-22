require "test_helper"

class Base62Test < Test::Unit::TestCase
  def test_encode
    { 0 => "0",
      1 => "1",
      10 => "A",
      100 => "1c",
      1231 => "Jr",
      3982 => "12E",
      10927 => "2qF",
      50923 => "DFL",
      100292 => "Q5c",
      202731 => "qjr",
      519278 => "2B5S",
      902323 => "3mjb",
      1003827 => "4D8l",
      2129387 => "8vwx",
      52338283 => "3XbZr",
      298372887 => "KBwPv",
      8237468237 => "8zTZmv",
      256352386723872 => "1AnE6bpNA"
    }.each do |int, base62|
      assert_equal base62, int.base62_encode
    end
  end

  def test_decode
    { "" => 0,
      "0" => 0,
      "1" => 1,
      "A" => 10,
      "1c" => 100,
      "Jr" => 1231,
      "12E" => 3982,
      "2qF" => 10927,
      "DFL" => 50923,
      "Q5c" => 100292,
      "qjr" => 202731,
      "2B5S" => 519278,
      "3mjb" => 902323,
      "4D8l" => 1003827,
      "8vwx" => 2129387,
      "3XbZr" => 52338283,
      "KBwPv" => 298372887,
      "8zTZmv" => 8237468237,
      "1AnE6bpNA" => 256352386723872
    }.each do |base62, int|
      assert_equal int, base62.base62_decode
    end
  end
end