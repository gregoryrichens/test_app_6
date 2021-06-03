users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

def authenticate(user, password, user_list)
  user_list.each do |user_hash|
    if user_hash[:username] == user && user_hash[:password] == password
      return user_hash
    end
  end
  "Credentials were not correct"
end

puts "Welcome"
25.times { print "-" }
puts
attempts = 0
while attempts < 4 do
  puts "Please enter your username"
  user = gets.chomp
  puts "Please enter your password"
  password = gets.chomp
  login_attempt = authenticate(user, password, users)
  puts login_attempt
  puts "press 'n' to quit or any other key to continue"
  input = gets.chomp.downcase
  if input == "n"
    break
  end
  attempts += 1
end

puts "You have exceeded the maximum number ot attempts" if attempts >= 4
