# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  if arr.empty?
      return 0
  end
  return arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  return arr.permutation(2).any? { |a,b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  if s.size == 0
    return false
  end
  if s.gsub(/[01]/, '') == ''
    num = s.to_i
    return num%4 == 0
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$"+price
  end
end
