users = [
  { username: 'alice', password: 'password123' },
  { username: 'bob', password: 'securepass' },
  { username: 'charlie', password: 'qwerty' },
  { username: 'dave', password: 'letmein' },
  { username: 'eve', password: 'trustno1' }
]

def authenticate(username, password, users)
  users.each do |user|
    if user[:username] == username && password == user[:password]
      return user
    end
  end
  "Authentication failed"
end

puts "Welcome to the authentication system."
30.times { print "-" }
puts
puts "Please enter your credentials to log in."

attempt = 4
while attempt > 0
  puts "Username:"
  input_username = gets.chomp
  puts "Password:"
  input_password = gets.chomp
  result = authenticate(input_username, input_password, users)
  puts result
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempt -= 1
end
puts "You have exceeded the number of attempts" if attempt == 0