class BankAccount
    @@account_count = 0
    def initialize
        create_account_num
        @checking_bal = 0
        @saving_bal = 0
        @interest_rate = 0.1
        @@account_count += 1
        self
    end
    def get_account_num
        @account_num
    end
    def get_checking_bal
        @checking_bal
    end
    def get_saving_bal
        @saving_bal
    end
    def get_total_bal
        @checking_bal + @saving_bal
    end
    def account_information
        puts get_account_num, get_total_bal, get_checking_bal, get_saving_bal, "#{@interest_rate}%"
        self
    end
    def deposit_checking(amount)
        @checking_bal += amount
        self
    end
    def deposit_saving(amount)
        @saving_bal += amount
        self
    end
    def withraw_checking(amount)
        return nil if @checking_bal-amount < 0
        @checking_bal -= amount
        self
    end
    def withraw_saving(amount)
        return nil if @saving_bal-amount < 0
        @saving_bal -= amount
        self
    end
    def get_account_count
        @@account_count
    end

    private
    def create_account_num
        @account_num = rand(999999999999)
    end
end

bank = BankAccount.new
bank.deposit_saving(20).deposit_checking(30)
puts bank.account_information
