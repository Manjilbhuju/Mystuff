x = [
  [13, 56 ,25],
  [76, 41, 12],
  [43, 14, 62]
]

result = [
  [0,0,0],
  [0,0,0],
  [0,0,0]
]

for i in 0..x.length - 1
  for j in 0..x[i].length - 1
    result[j][i] = x[i][j]
  end
end

puts result.inspect