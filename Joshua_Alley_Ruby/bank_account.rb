class BankAccount
  attr_accessor :checking, :saving
  def initialize(check_am, sav_am, rate)
    @checking = check_am
    @saving = sav_am
    @interest_rate = rate
    @account_number = rand(1000000000..9999999999)
  end
  def get_acct_number
    puts @account_number
    return self
  end
  def get_check_balance
    puts @checking
    return self
  end
  def get_saving_balance
    puts @saving
    return self
  end
  def deposit(acct, amount)
    if acct == 'saving'
      @saving += amount
    elsif acct == 'checking'
      @checking += amount
    else
      puts 'You can only deposit to checking or saving accounts.'
    end
    return self
  end
  def withdraw(acct,amount)
    if acct == 'saving'
      if @saving < amount
        puts "You have insufficient funds in your saving account."
      else
        @saving -= amount
      end
    elsif acct == 'checking'
      if @checking < amount
        puts "You have insufficient funds in your checking account."
      else
        @checking -= amount
      end
    else
      puts "You must choose either checking or saving to deposit your funds"
    end
    return self
  end
  def account_info
    puts "Account Number= #{@account_number}, Checking: #{@checking}, Saving: #{@saving}"
    return self
  end
end

josh = BankAccount.new(60,45,2)
josh.deposit('checking',40).get_check_balance
josh.withdraw('checking',10).get_check_balance
josh.get_acct_number
josh.get_acct_number
josh.get_acct_number
josh.account_info
