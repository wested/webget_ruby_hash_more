=begin rdoc

= WebGet Ruby Gem: HashMore

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2007-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

HashMore is a hash of hashes of hashes and so on recursively, enabling arbitrarily access (and assignment of values) to specific elements of a (multi-dimensional) hash, whether the element already exists or not.

Ruby's built-in Hash class will raise an error if code attempts to access an element which doesn't exist; HashMore will create the necessary elements and then execute the access.

Additionally, using the += operator to assign a numeric value to an element

Examples:
  hash = HashMore.new
  hash["red"]["apple"] = true
  hash["red"]["dress"] = true
  hash["red"]["truck"] = true
  
  hash["red"] => {"apple"=>true, "dress"=>true, "truck"=>true}

= Counting and Totals

This class is also useful for building aggregate data about a set of similar objects, such as how many employees are in each department of each division of a company or total tax and sale amounts for a set of invoices by customer by year.

Counting example:
  h = HashMore.new
  employees = Employee.all
  for e in employees 
    h[e.division][e.department]+=1
  end
  
  h['sales']['east coast] => 28
  h['sales']['west coast] => 23

Totals example:
  h = HashMore.new
  invoices = Invoices.all
  
  for i in invoices
    h[i.customer.name][i.sale_date.year]['tax'] += i.tax_amount
    h[i.customer.name][i.sale_date.year]['sale'] += i.sale_amount
  end
  
  h['Acme Corp']['2008']['tax'] => 12039.12
  h['Acme Corp']['2009']['sale'] => 102649

=end

  # WebGet Ruby Gem: HashMore
  # 
  # HashMore is a hash of hashes of hashes and so on recursively, enabling arbitrarily access (and assignment of values) to specific elements of a (multi-dimensional) hash, whether the element already exists or not.
  # 
class HashMore < Hash

  # @example
  # Basic use:
  #   hash = HashMore.new
  #   hash["red"]["apple"] = true
  #   hash["red"]["dress"] = true
  #   hash["red"]["truck"] = true
  #   =>
  #   hash["red"] => {"apple"=>true, "dress"=>true, "truck"=>true}
  # 
  # Counting example:
  #   
  #   h = HashMore.new
  #   employees = Employee.all
  #   for e in employees 
  #     h[e.division][e.department]+=1
  #   end
  # 
  #   h['sales']['east coast] => 28
  #   h['sales']['west coast] => 23
  # 
  # Totals example:
  # 
  #   h = HashMore.new
  #   invoices = Invoices.all
  # 
  #   for i in invoices
  #     h[i.customer.name][i.sale_date.year]['tax'] += i.tax_amount
  #     h[i.customer.name][i.sale_date.year]['sale'] += i.sale_amount
  #   end
  # 
  #   h['Acme Corp']['2008']['tax'] => 12039.12
  #   h['Acme Corp']['2009']['sale'] => 102649

  def initialize
    super{|h,k| h[k] = HashMore.new }
  end

  # Adds passed value to hash element or creates element if not already present
  # @return [Object] new value of element
  # @param [Object] increment value to add
  # @example
  #   h[i.customer.name][i.sale_date.year]['tax'] += i.tax_amount
  def +(increment)
    x
  end
  
end
