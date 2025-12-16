puts "Enter a number upto when Fibonacci series is to be generated: "
num = gets.chomp.to_i
result = []
for i in 0..num
    if i == 0
        result << 0
    elsif i == 1
        result << 1
    else
        result << result[i-1] + result[i-2]
    end
end
puts result
