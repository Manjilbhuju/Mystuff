puts "Enter a number: "
num = gets.chomp.to_i
result = 1
for n in 1..num
  result *= n
end
puts "Factorial of #{num} is #{result}"