# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0 
  arr.each do |i|
    sum += i
  end 
  return sum 
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sum = 0 
    arr.sort!.reverse!
    sum = arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  rtnVal = false 
  if arr.length == 0 || arr.length == 1
    return rtnVal
  end
  
  (0...arr.length).each do |i|
    k = i+1
    (k...arr.length).each do |j|
      if (arr[i] + arr[j]) == n 
        return rtnVal = true 
      end
    end
  end
  return rtnVal 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? 
    return false
  end
  
  if s.chars[0] =~ /[AEIOUaeiou]/
    return false
  elsif !(s.chars[0] =~ /[[:alpha:]]/)
    return false
  else
    return true 
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /[[:alpha:]]/ || s.empty?
    return false 
  else 
    if s.to_i % 4 == 0
      return true 
    else 
      return false 
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0.00
      raise ArgumentError 
    else 
      @isbn = isbn
      @price = price 
    end 
    
  end 
  
  attr_accessor :isbn
  attr_accessor :price 
  
  
  def price_as_string
    return "$%.2f" % @price.to_f
  end
  

end
