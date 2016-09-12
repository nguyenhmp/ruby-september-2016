class BankAccount
	@@totalaccounts =0
	def initialize()
		@checkbal = 0
		@savebal = 0
		@accountnum = accountnumcreation
		@@totalaccounts +=1
		@interestrate = 0.0012
	end
	def getcheckbal
		puts @checkbal
		return @checkbal
	end
	def getsavebal
		puts @savebal
		return @savebal
	end
	def deposit(money,account)
		if account == "saving"
			@savebal += money
		elsif account == "checking"
			@checkbal += money
		else
			puts "That is not a valid account please try again"
		end
	end
	def withdraw(amount,account)
		if account == "saving" && amount <= @savebal
			@savebal -= amount
		elsif account == "saving" && amount > @savebal
			return "The amount entered is too high, you don't have that kind of money"
		elsif account == "checking" && amount <= @checkbal
			@checkbal -= amount
		elsif account == "checking" && amount > @checkbal
			return "The amount entered is too high, you don't have that kind of money"
		else
			return "That is not a valid account please try again"
		end
	end
	def allfunds
		sum = @checkbal + @savebal
		puts "Your total fund amount comes to #{sum}"
		return sum
	end
	def account_information
		puts @accountnum
		allfunds
		getcheckbal
		getsavebal
		puts @interestrate
	end
	private

	def accountnumcreation
		return rand((1..9000))
	end

end
