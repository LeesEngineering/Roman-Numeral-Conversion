Roman_Numerals = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1,
}

#Reverses the Roman Numerals and Arabic Numbers around in the Hash
#To look like 1000 => 1090"M" instead.
Arabic_Numberals = Roman_Numerals.invert
#Input Roman Numeral or a Number
puts ""
print "Input a roman numeral number or a regular number for conversion: "
input = gets.chomp.upcase
puts "-------------------------------------------------------"
puts "Inputed value is #{input}."

puts "-------------------------------------------------------"

#This method checks whether an input was a string or an integer
public
def numeric?
  Float(self) != nil rescue false
end

true_false = input.numeric?
#Looks for true or false from true_false variable. Then goes through the case to
#convert a roman numeral or a number.

case true_false
#Converts Roman to Integer
#Modified code from pleac.sourceforge.net/pleac_ruby_numbers.html
when false
  def from_roman(input)
    str = input
    sum = 0
    for entry in Roman_Numerals
      sym = entry[0]
      num = entry[1]
      while sym == str[0, sym.length]
        sum += num
        str.slice!(0, sym.length)
      end
    end
    sum
  end
  x = from_roman(input)
  puts "Roman Numeral entered converts to => #{x}"
#Converts Integer to Roman
#Modified code from https://www.ruby-forum.com/topic/198968
when true
  def from_integer(number)
    Arabic_Numberals.to_a.inject(["", number]) { |(result, number),
      (order, roman)| [ result + roman * (number / order),
      number % order ]}.first
  end
Roman = from_integer(input.to_i)
puts "Answer: Number '#{input}' converts to => '#{Roman}' in Roman Numerals"
end
