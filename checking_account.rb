require_relative  'account.rb'

module Bank

  class CheckingAccount < Account
    attr_accessor :balance, :count_checks
    attr_reader :id, :open_date

    MIN = 0
    TFEE = 1
    TCHECKFEE = 2

    def initialize (id, balance, open_date)

      super(id, balance, open_date)
      @count_checks = 0

    end

    def withdraw(amount)
      super
      # Recall, there is a $1 transaction fee
    end

    def withdraw_using_check(amount)

      # The below loop ensures that for the first 3 check usages, the user is not peanalized. Since TCHECKFEE is a constant and can not change after 3 uses, then the amount being deducated will simply will be adjusted to not include the fee until the 4th check transaction.

      if @count_checks < 3
        amount = amount - self.class::TCHECKFEE
      end

      if @balance > amount + self.class::TCHECKFEE
        @balance = @balance - amount - self.class::TCHECKFEE
        puts "Thank you for doing business at MJ's Bank. Your remaining balance is $#{@balance}."
      else
        raise Exception.new("Sorry, you do not have sufficient funds for your withdrawal.")
      end
      @count_checks += 1

      return @balance
    end

    def reset_checks
      @count_checks = 0
    end

  #end of class
  end
# end of module
end
