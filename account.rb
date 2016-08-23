module Bank

  class Account
    attr_accessor :balance, :id

    def initialize(id)
      #initially, I was going to provide the user with a new id, but I wanted them to be able to enter there id and then tell them how much money they had and provide actions for them.
      @id = id
      @balance = rand(0..1000)
    end

    def balance
      puts "Your current balance is $#{@balance}."
    end

    def withdrawal
      puts "Your current balance is $#{@balance}. How much would you like to withdraw?"
      withdrawal_amount = gets.chomp.to_f

      while @balance < withdrawal_amount
        puts "Sorry, you do not have sufficient funds for your withdrawal. Please select an amount less than the amount in the account."
        withdrawal_amount = gets.chomp.to_f
      end

      @balance = @balance - withdrawal_amount
      puts "Please remember to collect your receipt and money before leaving. Your remaining balance is $#{@balance}."

    end

    def deposit
      puts "Please enter the amount of money you are depositing."
      amount = gets.chomp.to_f
      @balance = @balance + amount
      puts "Your new balance is $#{@balance}."
    end

  end

end
