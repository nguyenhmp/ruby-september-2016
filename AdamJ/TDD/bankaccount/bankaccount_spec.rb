require_relative 'bankaccount'
RSpec.describe BankAccount do
	it 'has a method to retrieve the checking account balance' do
		account1 = BankAccount.new
		expect(account1.checking).to eq("You have $0 in your checking account.")
	end
	it 'has a method to retrieve the total account balance' do
		account1 = BankAccount.new
		expect(account1.total).to eq("Total funds: $0")
	end
	it 'has a method to withdraw money from the savings or checking account' do
		account1 = BankAccount.new.deposit('checking',100)
		account2 = BankAccount.new.deposit('savings',100)
		account1.withdraw('checking',90)
		account2.withdraw('savings',90)
		expect(account1.total).to eq("Total funds: $10")
		expect(account2.total).to eq("Total funds: $10")
	end
	it 'has a method to withdraw money from the savings or checking account that will not allow overdrafting' do
		account1 = BankAccount.new.deposit('checking',100)
		expect(account1.withdraw('checking',110)).to eq('Insufficient funds')
	end
	it 'has a class variable with the total number of accounts that the user should not be able to access' do
		account1 = BankAccount.new
		expect{account1.total_accounts}.to raise_error(NoMethodError)
	end
	it 'will raise an error when the user tries to set the interest rate' do
		account1 = BankAccount.new
		expect{account1.interest_rate=10}.to raise_error(NoMethodError)
	end
	it 'will raise an error when the user tries to set any of the account attributes' do
		account1 = BankAccount.new
		expect{account1.account_number=12}.to raise_error(NoMethodError)
		expect{account1.checking_balance=12}.to raise_error(NoMethodError)
		expect{account1.savings_balance=12}.to raise_error(NoMethodError)
	end
end
