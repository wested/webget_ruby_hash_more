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


 # The test_roll code is from HashRollup and HashRolldown test/unit classes.
 # We include it here to ensure that HashMore uses rollup and rolldown right.

 def test_roll
  h=HashMore.new
  h['a']['x']='m'
  h['a']['y']='n'
  h['a']['z']='o'
  h['b']['x']='p'
  h['b']['y']='q'
  h['b']['z']='r'
  h['c']['x']='s'
  h['c']['y']='t'
  h['c']['z']='u'
  r=h.rollup
  assert_equal(['a','b','c'], r.keys.sort)
  assert_equal(['m','n','o'], r['a'].sort)
  assert_equal(['p','q','r'], r['b'].sort)
  assert_equal(['s','t','u'], r['c'].sort)
  r=h.rolldown
  assert_equal(['x','y','z'], r.keys.sort)
  assert_equal(['m','p','s'], r['x'].sort)
  assert_equal(['n','q','t'], r['y'].sort)
  assert_equal(['o','r','u'], r['z'].sort)
 end
 
end
