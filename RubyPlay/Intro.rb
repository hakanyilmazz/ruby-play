# frozen_string_literal: true

# This is a comment line in Ruby
puts 1.class # Integer
puts 0.0.class # Float
puts true.class # TrueClass
puts false.class # FalseClass
puts nil.class # NilClass

3.times { print "Ruby!" }

puts

1.upto(9) { |x| print x }

puts

a = [3, 2, 1]
a[3] = a[2] - 1

a.each do |elt|
  print elt + 1
end

puts

a = [1, 2, 3, 4]
b = a.map { |x| x * x }
c = a.select { |x| x % 2 == 0 }
d = a.inject do |sum, x|
  sum + x
end

puts d

h = {
  :one => 1,
  :two => 2
}

puts h[:one]

h[:three] = 3

h.each do |key, value|
  print "#{value}: #{key}; "
end

puts

File.open("test.txt") do |f|
  lines = f.readlines
  puts lines
end

t = Thread.new do
  File.read("test.txt") # Read a file in the background
end

x = 1
y = 2
minimum = if x < y then
            x
          else
            y
          end

def square(x)
  x * x
end

puts square y

def Math.square(x)
  x * x
end

puts Math.square y

x += 1
y += 1

x, y = 1, 2
a, b = b, a
x, y, z = [1, 2, 3]

puts x, y, z

def polar(x, y)
  theta = Math.atan2(y, x)
  r = Math.hypot(x, y)
  [r, theta]
end

distance, angle = polar(2, 2)
puts distance, angle

# o.x=(1)
# o.x = 1

# array.sort!() => changes elements of array
# array.sort() => returns changed copy of elements

# /regexExp/
puts "Ruby".match?(/[Rr]uby/)
puts "d".match?(/d{5}/)

# Ranges
# 1..3 => 1 <= x <= 3
# 1...3 => 1 <= x < 3

