require_relative 'bank_account'
RSpec.describe BankAccount do
  it 'has a method for retrieving the checking account balances' do
    acct = BankAccount.new(100,500,2)
    acct.get_check_balance
    expect(acct.get_check_balance).to eq(100)
  end
  it 'has a method that retrieves the total account balance' do
    acct = BankAccount.new(100,500,2)
    acct.total_balance
    expect(acct.total_balance).to eq(600)
  end
  it 'has a method that allows user to withraw cash from either the checking or saving account' do
    acct = BankAccount.new(900,500,2)
    acct.withdraw('checking', 50)
    expect(acct.withdraw('checking', 50)).to eq(850)
  end
  it 'has a method that raises an error if a user tried to withdraw more money than available' do
    acct = BankAccount.new(100,500,2)
    acct.withdraw('checking', 200)
    expect(acct.withdraw('checking', 200)).to eq("You have insufficient funds in your checking account.")
  end
  it 'returns an error message if user tries to see the number of accounts' do
    acct = BankAccount.new(100,500,2)
    expect{acct.get_acct_number}.to raise_error(NoMethodError)
  end
  it 'raises an error when a user tried to set the interest rate' do
    acct = BankAccount.new(100,500,2)
    expect{acct.interest_rate = 10}.to raise_error(NameError)
  end
  it 'raises an error when a user tried to set an attribute' do
    acct = BankAccount.new(100,500,2)
    expect{acct.checking = 10}.to raise_error(NameError)
  end
end
