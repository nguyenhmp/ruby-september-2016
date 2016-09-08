class BankAccount
	attr_reader :account_number, :checking, :saving
	@@total_accounts

	def initialize
		@account_number = generate_account
		@checking = 10
		@saving = 10
		@interest = 0.0001
		@@total_accounts += 1
	end

	def deposit amount, account_type
		if amount < 0 
			puts "Amount must be greated than 0"
			return false
		end

		if account_type.downcase == "checking"
			@checking += amount
		else
			@saving += amount
		end
		puts "Deposit of #{amount} in the #{account_type.downcase}'s account was successfull"
	end

	def withdraw amount, account_type
		if account_type.downcase == "checking"
			if amount <= @checking
				@checking -= amount
			else
				return "Insufficient funds in checking"
			end
		else
			if amount <= @saving
				@checking -= @saving
			else
				return "Insufficient funds in saving"
			end
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