class BankAccount
  def initialize(check_am, sav_am, rate)
    @checking = check_am
    @saving = sav_am
    @interest_rate = rate
    @account_number = rand(1000000000..9999999999)
  end
  def get_acct_number
    @account_number
  end
  def get_check_balance
    @checking
  end
  def get_saving_balance
    @saving
  end
  def total_balance
    total = @checking + @saving
    return total
  end
  def deposit(acct, amount)
    if acct == 'saving'
      @saving += amount
      return @saving
    elsif acct == 'checking'
      @checking += amount
      return @checking
    else
      'You can only deposit to checking or saving accounts.'
    end
  end
  def withdraw(acct,amount)
    if acct == 'saving'
      if @saving < amount
        "You have insufficient funds in your saving account."
      else
        amt = @saving - amount
        return amt
      end
    elsif acct == 'checking'
      if @checking < amount
        "You have insufficient funds in your checking account."
      else
        amt = @checking - amount
        return amt
      end
    else
      "You must choose either checking or saving to deposit your funds"
    end
  end
  def account_info
    "Account Number= #{@account_number}, Checking: #{@checking}, Saving: #{@saving}"
  end
  private
  def get_acct_number
    number = 2
    return number
  end
end

# josh = BankAccount.new(60,45,2)
# josh.deposit('checking',40).get_check_balance
# josh.withdraw('checking',10).get_check_balance
# josh.get_acct_number
# josh.get_acct_number
# josh.get_acct_number
# josh.account_info
