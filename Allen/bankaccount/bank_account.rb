
#######
class BankAccount
	attr_accessor :account_number, :checking, :saving, :total_accounts
  @account_counter = 0

  class << self
    attr_accessor :account_counter
  end

	def initialize
		@account_number = generate_account
		@checking = 10000000
		@savings = 100000000
		@interest = 0.0001
    self.class.account_counter += 1
	end

  def checkingAccount
    return "checking account #{@checking}"
  end

  def totalBalance
    return "total balance: #{@checking + @savings}"
  end

  def withdraw(amount, account)
    if account == 'savings'
      if amount > @savings
        puts "you dont have money"
      else
        @savings -= amount
      end
    else
      if amount > @checking
        puts "you dont have enough money"
      else
        @checking -= amount
      end
    end
  end

  def deposit(amount, account)
    if account == 'savings'
      @savings +=amount
    else
      puts 'going inside checking account'
      @checking +=amount
    end
  end


	def account_information
		saving_total = @saving + @saving * @interest
		puts "Your account number is: #{@account_number}"
		puts "Your Checking Account balance is: #{@checking}"
		puts "Your Savings Account balance is: #{saving_total}"
		puts "Total balance is: #{@checking + saving_total}"
		puts "The interest rate is: #{@interest}"
	end

	private
		def generate_account
			Array.new(10) { [*0..9].sample }.join
		end
end

allen = BankAccount.new
allen.withdraw(300000, "checking")
