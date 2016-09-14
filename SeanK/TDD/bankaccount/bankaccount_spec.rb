require_relative 'bankaccount'
RSpec.describe BankAccount do
	it 'has a method to retrieve the @checkbal' do
		bank = BankAccount.new
		expect(bank.getcheckbal).to eq(0)
	end

	it 'has a method to retrieve full amount' do
		bank = BankAccount.new
		bank.deposit(300,'checking')
		expect(bank.allfunds).to eq(300)
	end

	it 'has a method to withdraw money that takes the amount to be withdrawn and account to draw from' do
		bank = BankAccount.new
		bank.deposit(300, 'saving')
		bank.deposit(300,'checking')
		bank.withdraw(10, 'checking')
		expect(bank.getcheckbal).to eq(290)
	end

	it 'raises displayed error when user tries to draw too much out' do
		bank = BankAccount.new
		bank.deposit(300, 'saving')
		expect(bank.withdraw(350,'saving')).to eq("The amount entered is too high, you don't have that kind of money")
	end

	it 'raises error when user tries to access @@totalaccounts' do
		bank = BankAccount.new
		expect{bank.totalaccounts}.to raise_error(NoMethodError)
	end

	it 'raises error when user tries to access @interestrate' do
		bank = BankAccount.new
		expect{bank.interestrate}.to raise_error(NoMethodError)
	end

	it 'raises error when user tries to set any of the variables' do
		bank = BankAccount.new
		expect{bank.checkbal = 100}.to raise_error(NoMethodError)
		expect{bank.savebal = 100}.to raise_error(NoMethodError)
		expect{bank.accountnum = 100}.to raise_error(NoMethodError)
	end
end