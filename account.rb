module Bank

  class Account
    attr_accessor :balance, :id

    def initialize(id)
      #initially, I was going to provide the user with a new id, but I wanted them to be able to enter there id and then tell them how much money they had and provide actions for them.
      @id = id
      @balance = rand(0..1000)
    end

    def balance
      puts "Your current balance is #{@balance}."
    end

    def withdrawal(amount)
      if @balance < amount
        puts "Sorry, you do not have sufficient funds foryour withdrawal."
      else
        @balance = @balance - amount
        puts "Please remember to collect your receipt andmoney before leaving. Your remaining balance is $#{@balance}."
      end
    end

    def deposit(amount)
      @balance = @balance + amount
    end

  end

end
