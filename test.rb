Roman_Numerals = {
  "M" => 1000,
  "D" => 500,
  "C" => 100,
  "L" => 50,
  "X" => 10,
  "V" => 5,
  "I" => 1,
}

#Input Roman Numeral or a Number
puts "-------------------------------------"
print "Input a roman numeral number or a regular number for conversion: "
input = gets.chomp.upcase
puts "Inputed value is #{input}."
puts "-------------------------------------"

#This method checks whether an input was a string or an integer
public
def numeric?
  Float(self) != nil rescue false
end
puts "Is the input roman (String = false) or a number (Integer = true)? "
puts input.numeric?

puts "-------------------------------------"
#Iterates through each hash (This is a test)
Roman_Numerals.each do |value, roman|
  #The "puts value and roman is a test to see the output"
  puts value
  puts roman
end
puts "-------------------------------------"
#End of test

=begin
def romanize

end
=end
