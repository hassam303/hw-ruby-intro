# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0 #Pass: works on the empty array
  arr.each do |i|
    sum += i #Pass:returns correct sum
  end 
  return sum 
end

def max_2_sum arr
  #Pass: returns zero if array is empty 
  return 0 unless arr.length != 0 
  #Pass:returns value of the element if just one element
  return arr[0] unless arr.length != 1 

  sum = 0 
  arr.sort!.reverse!
  
  #Pass:works even if 2 largest values are the same
  sum = arr[0] + arr[1] 
  
  return sum #Pass:returns the correct sum
end

def sum_to_n? arr, n
  rtnVal = false #base case 
  
  #Pass:returns false for an empty array 
  #Pass: returns false for any single element array
  return rtnVal if arr.length <= 1  

  (0...arr.length).each do |i|
    (i+1...arr.length).each do |k|
      
      if (arr[i] + arr[k]) == n 
        #Pass:returns true when any two elements sum to the second argument
        rtnVal = true 
        break
      end
      
    end
  end
  
  return rtnVal 
end

# Part 2

def hello(name)
  return "Hello, " + name #Pass:The hello method returns the correct string
end

def starts_with_consonant? s
  
  #Pass:classifies true cases
  return true unless s.empty? || #Pass:works on the empty string
                     s.chars[0] !~ /[[:alpha:]]/|| #Pass:works on nonletters
                     s.chars[0] =~ /[AEIOUaeiou]/ #Pass:classifies false cases

end

def binary_multiple_of_4? s
  
  return true unless s.empty? || 
                     s =~ /[[:alpha:]]/ ||
                      #Pass:classifies valid binary numbers
                      #Pass:rejects invalid binary numbers
                     s.to_i % 4 != 0 
end

# Part 3
class BookInStock
  
  def initialize(isbn, price)
    raise ArgumentError if  isbn.empty? || #Pass:should reject invalid ISBN number
                            #Pass:should reject zero price
                            #Pass:should reject negative price
                            price <= 0.00
    
    @isbn = isbn
    @price = price 

  end 
  
  attr_accessor :isbn #PassAll:getters and setters - isbn
  attr_accessor :price #PassAll:getters and setters - price
  
  
  def price_as_string
    return "$%.2f" % @price.to_f #PassAll:price_as_string
  end
  

end
