#Testing change

#Set up starting variables
@accountbalance = 100
@option = ""
@amount = ""

#Method to display balance
def balance
  puts "Your current balance is $#{@accountbalance}"
end

#Method to withdraw
def withdraw
  @accountbalance = @accountbalance - @amount
  balance
end

#Method to deposit
def deposit
  @accountbalance = @accountbalance + @amount
  balance
end

#Method to transact on the ATM
def transaction
  while @option != "e" do
    puts "Would you like to:\n(W)ithdraw\n(D)eposit\n(E)nd"
    @option = gets.chomp.downcase
    if @option != "e"
      puts "For what amount?"
      @amount = gets.chomp.to_i
    end
    if @option == "w"
      withdraw
    elsif @option == "d"
      deposit
    elsif @option == "e"
      puts "Thank you for using the ATM today. Your ending balance is: $#{@accountbalance}"
    else
      puts "Input error. Please type either W, D or E."
    end
  end
end

puts "Welcome to the ATM. Your current balance is: $100. Please select from the following options:"
transaction
