a = [3, 7, 12, 18, 25, 31, 44, 56, 63, 72, 84, 95, 101, 116, 129, 143, 158, 172, 189, 200]
b = a.sort()
puts b.inspect
x = 200
low = 0
high = b.length - 1

while high >= low
  mid = low + ((high - low) / 2).floor

  if (b[mid] == x)
    puts "The searched value is in #{mid} index";
    break

  elsif (b[mid] > x)
    high = mid - 1;
  
  else
    low = mid + 1;
  end

  mid = -1
end


if mid == -1
  puts "Element not found"
end