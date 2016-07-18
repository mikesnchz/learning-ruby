class Account
    attr_reader :name
    attr_reader :balance

    def initialize(name,balance=100)
        @name = name
        @balance = balance
    end

    public
    def display_balance(pin_number)
        if pin_number == pin
            puts "Balance: Php#{balance}."
        else
            puts pin_error
        end
    end

    def withdraw(pin_number,amount)
        if pin_number == pin
            if amount > @balance
                puts "You cannot withdraw more than your balance. Current balance: Php#{@balance}."
            else
            @balance -= amount
            puts "Withdrew Php#{amount}. New balance: Php#{@balance}."
            end
        else
            puts pin_error
        end
    end

    def deposit(pin_number,amount)
        if pin_number == pin
            @balance += amount
            puts "Deposited Php#{amount}. New balance: Php#{@balance}."
        else
            puts pin_error
        end
    end

    private
    def pin
        @pin = 1234
    end

    def pin_error
        return "Access denied: incorrect PIN."
    end

end

checking_account = Account.new("Mike",250_000)
checking_account.deposit(1234,500_000)
checking_account.withdraw(1234,251_000)
