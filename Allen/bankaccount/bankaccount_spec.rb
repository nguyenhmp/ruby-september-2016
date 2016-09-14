require_relative 'bank_account'

RSpec.describe BankAccount do

  it 'this method retrieving the checking account balance' do
    expect(BankAccount.new.totalBalance).to eq("your balance is 110000000")
  end

  it 'raises an error when the user tries to print all accounts' do
    expect{BankAccount.new.account_counter}.to raise_error(NoMethodError)
  end

  it 'raises error when user tries to change interest rate' do
    expect{BankAccount.new.interest_rate(.09)}.to raise_error(NoMethodError)
  end

end
