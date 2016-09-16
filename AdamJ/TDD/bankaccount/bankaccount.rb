class BankAccount
	@@total_acounts = 0
	def initialize
		@account_number = create_account_num
		@checking_balance = 0
		@savings_balance = 0
		@interest_rate = 0.15
		@@total_acounts += 1
	end
	def checking
		"You have $#{@checking_balance} in your checking account."
	end
	def savings
		puts "You have $#{@savings_balance} in your savings account."
		self
	end
	def deposit(account, money)
		@checking_balance += money if account == 'checking'
		@savings_balance += money if account == 'savings'
		self
	end
	def withdraw(account, money)
		if account == 'checking' and @checking_balance>=money 
			@checking_balance -= money
		elsif account ==  'savings' and @savings_balance>=money 
			@savings_balance -= money 
		else
			return 'Insufficient funds'
		end
		self
	end
	def total
		"Total funds: $#{@checking_balance+@savings_balance}"
	end
	def account_information
		puts @account_number
		total
		checking
		savings
		puts @interest_rate
		self
	end
	private
	def create_account_num
		return Random.rand(0...10000)
	end
end

new = BankAccount.new
new.deposit('checking',100)
new.deposit('savings',100)
new.withdraw('checking',99)
new.account_information