require_relative 'account'

# PRINTED self.all method!
Bank::Account.all.each do |line|
  puts line
end

# EXAMPLE OF self.find method!
puts "id: 1213 #{Bank::Account.find(1213)}"




# Playing with the information to allow for deposit, withdrawal, and balance.

# puts "Please enter your id before proceeding"
# user_id = gets.chomp
#
# Bank::Account.all.each_with_index do |line, i|
#   if line[0] == user_id
#     puts "What can I help you with today? Please select an option below by selecting the letter of the desired action."
#     puts "(a) provide balance"
#     puts "(b) withdraw cash"
#     puts "(c) deposit money into account"
#     action = gets.chomp
#
#     until action == "quit"
#       if action == "a"
#         puts line[1]
#         puts Bank::Account.all[i][1]
#         puts Bank::Account.all[i].balance
#       elsif action == "b"
#         puts "You chose to withdraw cash"
#         user.withdrawal
#       elsif action == "c"
#         user.deposit
#       else
#         puts "You did not chose a or b"
#       end
#       puts "Can I help you with anything else? If not please enter 'quit' otherwise select options a,b, or c."
#       action = gets.chomp
#     end
#   end
# end
#
# exit
