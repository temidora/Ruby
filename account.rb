class Account
  attr_reader:name, :balance
  def initialize(name, balance=100)
    @name=name
    @balance=balance
  end

  private def pin
    @pin=1234
  end

  private def pin_error
    return "Access denied: incorrect PIN."
  end

  public def display_balance(pin_number)
   pin_number==pin ? "Balance: $#{@balance}." :  pin_error
  end

  public def withdraw(pin_number,amount)
     puts pin_number==pin ? "Withdrew #{amount}. New balance: $#{@balance}." : pin_error
  end

end

checking_account=Account.new("omg",800_000)
