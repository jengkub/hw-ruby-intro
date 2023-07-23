# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each {|i|
    result += i}
  result
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false unless arr.length > 1 #ถ้า array น้อยกว่าหรือเท่ากับ 1 ให้ return false

  !arr.find do |el| #ทำให้ el คือ elemet ใน array
  arr.include?(n-el) && ((n - el) == el ? arr.count(el) > 1 : true) # ถ้า x = n - y เช็คว่ามีอยุ่ใน el ไหมและเช็คอีกว่าไม่ใช่ตัวมันเอง
  end.nil?
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !(s =~ /^(?![aeiou])[a-z]/i).nil?
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  !(s =~ /^(?:[01]*00|0)$/).nil? # เช็คตัวลงท้ายเป็น 00 ต่อมาเช็คตัวข้างหน้า 0 ไม่ก็ 1 นอกจากนั้นให้ return nil
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn , price
    raise ArgumentError , "`isbn` must not empty" if isbn.length == 0
    raise ArgumentError , "`price` must not less than or equal zero" if price <= 0
  
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
