class Bankaccount
  @@totalaccounts = 0

  def initialize()
      @checkbalance = 0
      @savebalance = 0
      @accountnumber = accountnumbercreate
      @@totalaccounts +=  1
  end

  def displayCheckBalance
      puts  @checkbalance
      return @checkbalance
  end

  def displaySaveBalance
      puts @savebalance
      return @savebalance
  end

  def deposit(money,account)
      if account == "saving"
        @savebalance = @savebalance + money
      elsif account == "checking"
        @checkbalance  = @checkbalance + money
      else
        puts "Please use a valid account number"
      end
    end


      def withdraw(money,account)
        if account == "saving" && money <= @savebalance
          @savebalance = @savebalance - money
        elsif account == "saving" && money >= @savebalance
          puts "Please lower your withdrawal amount"
        elsif account == "checking" && money <= @checkbalance
          @checkbalance = @checkbalance - money
        elsif accout = "checking" && money >= @checkbalance
          puts "Please lower your withdrawal amount"
        else puts "please try again"
        end
      end

      def totalFunds
        total = @checkbalance + @savebalance
        puts "Total combined funds are #{total}"
        return total
      end

        def acc_info
          puts @accountnumber
          totalFunds
          displayCheckBalance
          displaySaveBalance
        end

        private
        def accountnumbercreate
          return rand((1..90000))
        end
  end

myBankaccount = Bankaccount.new
myBankaccount.deposit(1000,"checking")
myBankaccount.totalFunds
myBankaccount.withdraw(50,"checking")
myBankaccount.totalFunds
myBankaccount.withdraw(1000,"checking")
myBankaccount.deposit(1000,"saving")
myBankaccount.totalFunds
myBankaccount.withdraw(50,"saving")
myBankaccount.totalFunds
myBankaccount.withdraw(1000,"saving")
myBankaccount.acc_info
