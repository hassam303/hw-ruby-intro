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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
