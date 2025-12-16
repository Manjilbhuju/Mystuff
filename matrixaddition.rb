x = [
  [13, 56 ,25],
  [76, 41, 12],
  [43, 14, 62]
]

y = [
  [12, 32, 5],
  [24, 76, 32],
  [67, 1, 45]
]

result = [
  [0,0,0],
  [0,0,0],
  [0,0,0]
]

for i in 0..x.length - 1
  for j in 0..x[i].length - 1
    result[i][j] = x[i][j] + y[i][j]
  end
end

puts result