require File.dirname(__FILE__) + '/test_helper.rb'

class TestBase62 < Test::Unit::TestCase
  
  def test_1_to_10000000
    (0..10000000).each do |i| 
      assert_equal(i.to_s, i.base62_encode.base62_decode.to_s, i.to_s + "\t" + i.base62_encode.to_s + "\t" + i.base62_encode.base62_decode.to_s)
    end
  end
  
end
