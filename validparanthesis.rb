a = "({]})"
b = a.split("")
c = []
yas = {
  ")" => "(",
  "}" => "{",
  "]" => "["
}
valid = true

for i in 0..b.length - 1
  if b[i] == "(" || b[i] == "{" || b[i] == "["
    c << b[i]
  elsif b[i] == ")" || b[i] == "}" || b[i] == "]"
    if c.length == 0
      valid = false
      break
    end
    if c[c.length - 1] == yas[b[i]]
      c.pop
    else
      valid = false
      break
    end
  end
end

puts valid