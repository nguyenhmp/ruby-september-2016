class BankAccount
	def initialize
		@accounts = 100
		@checking = 0
		@savings = 0
		@accountNumber = generate
		@interest = interest
	end
	def checking
		puts @checking
	end
	def savings
		puts @savings
	end
	def deposit(amount, bool)
		if bool == true
			@checking += amount
		else 
			@savings += amount
		end
		self		
	end
	def withdraw(amount, bool)
		if bool == true
			@checking -= amount
		else 
			@savings -= amount
		end
		self		
	end
	def view
		puts @savings + @checking
	end	
	def accountInfo
		puts "Account number: #{@accountNumber}"
		puts "Total : #{@savings + @checking}"
		puts "Savings : $ #{@savings}"
		puts "Checking : $ #{@checking}"
		puts "Interest : % #{@interest}"
	end
	private
	def interest
		return 2
	end
	def generate
		return 10.times.map{rand(0..9)}.join
	end
end

BankAccount.new.deposit(50, true).accountInfo