puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
full_name = first_name + ' ' + last_name
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
char_count = first_name.length + last_name.length
puts "Your name has #{char_count} characters in it"