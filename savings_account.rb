require_relative  'account.rb'

module Bank

  class SavingsAccount < Account
    attr_accessor :balance
    attr_reader :id, :open_date 

    MIN = 10
    TFEE = 2

    def initialize (id, balance, open_date)

      super(id, balance, open_date)

        if balance > 10
          puts "Thank you for opening a savings account with MJ's Bank. We look forward to doing business with you."
        else
          raise Exception.new("Sorry, in order to open or maintain a savings account, you must maintain a balance of $10.")
        end
    end

    def withdraw(amount)
      super
    end

    def add_interest(rate)
      return @balance * rate/100
    end

  #end of class
  end
# end of module
end
