int = 10
float =  10.2
string = "String"
hash = {'América do sul' => 'Brasil'}
array = [1,2,3,4]
symbol = :symbol

puts int.class
puts float.class
puts string.class
puts hash.class
puts array.class
puts symbol.class

puts "What's your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
age = age + 1
puts "Hello, #{name}. So, you have #{age}. I'm feeling good knowing more about you!"

print "Enter the first number: "
numberOne = gets.chomp.to_i

print "Enter the second number: "
numberTwo = gets.chomp.to_i

puts "Operations:\nSum = #{numberOne + numberTwo}\nSubtraction = #{numberOne - numberTwo}\nMultiply = #{numberOne + numberTwo}\nDivision = #{numberOne / numberTwo}"
