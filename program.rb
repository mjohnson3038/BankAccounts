# file 2/2 for Wave 2

require_relative 'account'
require_relative 'checking_account'
require_relative 'savings_account'

# puts "WAVE 2"
# puts "________________"

# # PRINTED self.all method!
# Bank::Account.all.each do |line|
#   puts line
# end
#
# # EXAMPLE OF self.find method!
# puts "id: 1213 #{Bank::Account.find(1213)}"

puts "WAVE 3" # You may need to comment out the information for wave 2 to get this section to work. 
puts "________________"
 s = Bank::SavingsAccount.new(13774, 100000, "01/02/1903")
 c = Bank::CheckingAccount.new(13774, 1000, "01/02/1903")

puts "SAVINGS ACCOUNT"
puts s.welcome
puts s.withdraw(500)
puts s.deposit(10)
puts s.deposit(10)
puts s.deposit(10)
puts s.withdraw(473)


puts "CHECKING ACCOUNT"
puts c.withdraw(5)
puts c.deposit(15)
puts c.deposit(15)
puts c.deposit(15)
puts c.withdraw_using_check(10)
puts c.withdraw_using_check(10)
puts c.withdraw_using_check(10)
puts c.withdraw_using_check(5)
puts c.reset_checks
puts c.withdraw_using_check(10)






# Playing with the information to allow for deposit, withdrawal, and balance. I know this would be better off in the account.rb file but everytime I put it there as a method, it recieves many many errors.

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
