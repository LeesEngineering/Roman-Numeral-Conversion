Roman_Numerals = {
  "M" => 1000,
  "D" => 500,
  "C" => 100,
  "L" => 50,
  "X" => 10,
  "V" => 5,
  "I" => 1,
}

#Reverses the Roman Numerals and Arabic Numbers around in the Hash
#To look like 1000 => "M" instead.
Arabic_Numberals = Hash[Roman_Numerals.to_a.reverse.reverse]

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
#puts "Is the input roman (String = false) or a number (Integer = true)? "
#puts input.numeric?
true_false = input.numeric?
#puts "-------------------------------------"

#Looks for true or false from true_false variable. Then goes through the case to
#convert a roman numeral or a number.

case true_false
when false
#Converts a Roman Numeral to a Number
  Roman_Numerals.each do |roman, value|
  puts "#{roman}:#{value}"
    #if roman == input
      #puts value
    #  puts "Answer: The Roman Numeral '#{input}' => #{value}."
    #  break
    #else
    #  next
    #end
  end

#Converts a Number to a Roman Numeral
when true
  Arabic_Numberals.each do |arabic, letter|
    puts "#{letter}:#{arabic}"
    puts "#{input}"
    if input == arabic
        puts "Answer: The Number '#{input}' => #{letter}"
        break
    else
      puts "Why isn't this code working?"
      next
    end
  end
end
puts "-------------------------------------"
