# File 3/3 for wave 3 baseline.

require_relative  'account.rb'

module Bank

  class SavingsAccount < Account
    attr_accessor :balance
    attr_reader :id, :open_date

    MIN = 10
    TFEE = 2

    def initialize (id, balance, open_date)

      super(id, balance, open_date)

    end

    def welcome
      if @balance > 10
        return "Thank you for opening a savings account with MJ's Bank. We look forward to doing business with you."
      else
        raise Exception.new("Sorry, in order to open a savings account, you must deposit $10.")
      end
    end

    def balance (amount)
      super(amount)
    end

    def withdraw(amount)
      super
    end

    # Since there is no obvious time changings, the interest will be added after each deposit.
    def add_interest(rate)
      @interest = @balance * rate/100
      puts "You have accumulated $#{ @interest } in interest."
    end

    def deposit (amount)
      puts add_interest(0.25)
      @balance += @interest
      super(amount)
    end

  #end of class
  end
# end of module
end
