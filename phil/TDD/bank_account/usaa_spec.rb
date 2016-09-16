require_relative 'usaa'
RSpec.describe BankAccount do
    it 'has a method for retrieving the checking account balance' do
        bank = BankAccount.new
        expect(bank.get_checking_bal).to eq(0)
        bank.deposit_checking(25)
        expect(bank.get_checking_bal).to eq(25)
    end
    it 'has method that retrieves total account balance' do
        bank = BankAccount.new
        expect(bank.get_total_bal).to eq(0)
        bank.deposit_checking(25).deposit_saving(15)
        expect(bank.get_total_bal).to eq(40)
    end
    it 'has a method that allows user to withdraw cash' do
        bank = BankAccount.new
        bank.deposit_checking(25).deposit_saving(40)
        bank.withdraw_checking(20).withdraw_saving(30)
        expect(bank.get_checking_bal).to eq(5)
        expect(bank.get_saving_bal).to eq(10)
    end
    it 'returns nil when attempting to withdraw more than current balance' do
        bank = BankAccount.new
        bank.deposit_checking(15).deposit_saving(10)
        expect(bank.withdraw_checking(20)).to eq(nil)
        expect(bank.withdraw_saving(30)).to eq(nil)
    end
    it 'raises error when user tries to print out account_count' do
        bank = BankAccount.new
        expect{bank.account_count}.to raise_error(NoMethodError)
    end
    it 'raises error when user tries to set interest rate' do
        bank = BankAccount.new
        expect{bank.interest_rate=0.5}.to raise_error(NoMethodError)
    end
    it 'raises error when user tries to set any attribute' do
        bank = BankAccount.new
        expect{bank.checking_bal=100}.to raise_error(NoMethodError)
        expect{bank.saving_bal=150}.to raise_error(NoMethodError)
    end
end
