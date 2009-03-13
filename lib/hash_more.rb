# = HashMore
#
# Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
# Copyright:: Copyright (c) 2007-2009 Joel Parker Henderson
# License:: CreativeCommons License, Non-commercial Share Alike
# License:: LGPL, GNU Lesser General Public License
#
# HashMore is a hash of hashes of hashes and so on recursively
#
# Example
#   h = HashMore.new
#   h['foo']['bar']['baz'] = 'hello'  # create the keys; set value to 'hello'
#
#
# = Counting
#
# Example
#   h = HashMore.new
#   h['foo']['bar']['baz'] += 5   # create the keys; set value to 5
#
# Example of counting
#   for u in users 
#     h[u.company][u.name]+=1
#   end
#
#   h['Acme'].keys
#   => names of all the users at Acme
#
#   h['Acme']['John Doe']
#   => how many users at Acme are named John Doe
#
##

class HashMore < Hash

  def initialize
    super{|h,k| h[k] = HashMore.new }
  end

  def +(x)
    x
  end
  
end
