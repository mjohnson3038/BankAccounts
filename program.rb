require_relative 'account'

user = Bank::Account.new(98765)

puts "What can I help you with today? Please select an option below by selecting the letter of the desired action."
puts "(a) provide balance"
puts "(b) withdraw cash"
puts "(c) deposit money into account"

action = gets.chomp

if action == a
  user.balance
elsif action == b
  puts "You chose withdraw cash"
else
  exit
end





puts user.id
puts user.balance

puts user.balance
