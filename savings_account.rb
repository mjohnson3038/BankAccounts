require_relative  'account.rb'

module Bank

  class SavingsAccount < Account
    attr_accessor :balance
    attr_reader :id, :open_date, :minimum_balance

    def initialize (id, balance, open_date)

      super(id, balance, open_date)

        if balance > 10
          puts "Thank you for opening a savings account with MJ's Bank. We look forward to doing business with you."
        else
          raise Exception.new("Sorry, in order to open or maintain a savings account, you must maintain a balance of $10.")
        end
      @minimum_balance = 10
    end

    def withdraw(amount)
      puts "YOU ARE IN SAVINGS"
      minimum_balance = 95
      super(amount)
      puts @balance
      puts minimum_balance

    end


  #end of class
  end
# end of module
end
