require 'test/unit'
require 'hash_more'

class Testing < Test::Unit::TestCase

 def test_new
  h = HashMore.new
  assert_equal(h,{})
 end

 def test_equal
  h = HashMore.new
  h[:a][:b][:c] = 'hello'
  assert_equal(h[:a][:b][:c],'hello')
 end

 def test_add
  h = HashMore.new
  h[:a][:b][:c] += 1
  assert_equal(h[:a][:b][:c],1)  
  h[:a][:b][:c] += 1
  assert_equal(h[:a][:b][:c],2)  
 end
 
end
