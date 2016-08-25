require 'csv'

module Bank

  class Account
    attr_accessor :balance
    attr_reader :id, :open_date

    def initialize(id, balance, open_date)
      #initially, I was going to provide the user with a new id, but I wanted them to be able to enter there id and then tell them how much money they had and provide actions for them.
      @id = id
      @balance = balance.to_f/100
      @open_date = open_date
    end

    def balance
      puts "Your current balance is $#{@balance}."
    end

    def withdraw(amount, message = "Sorry, you do not have sufficient funds for your withdrawal.")

      if @balance > amount
        @balance = @balance - amount
        puts "Please remember to collect your receipt and money before leaving. Your remaining balance is $#{@balance}."
      else
        raise Exception.new(message)
      end
    end

    def deposit (amount)
      @balance = @balance + amount
      puts "Your new balance is $#{@balance}."
    end

    def self.all
      customers = []
      CSV.read('/Users/madeleinejohnson/Ada/project-forks/Bank/BankAccounts/support/accounts.csv','r'). each do |line|
        customers << self.new(line[0], line[1], line[2])
      end
      return customers
    end

    def self.find(id)
      # to_p = nil
      Bank::Account.all.each do |line|
        if id == line.id.to_i
          return line
        end
      end
    end

  end
end
