loop do
    puts "\n1-Multiply\n2-Sum\n3-Subtraction\n4-Division\nEnter 0 if you want to leave"
    print "What the mathematic operation that you want? "
    operation = gets.chomp.to_i
    options = [1, 2, 3, 4]

    if operation != 0 and options.include? operation
        print "Enter the first number: "
        firstNumber = gets.chomp.to_i
        print "Enter the second number: "
        secondNumber = gets.chomp.to_i
    end

    case operation
    when 1
        puts "\nThe result is: #{firstNumber * secondNumber}"
    when 2
        puts "\nThe result is: #{firstNumber + secondNumber}"
    when 3
        puts "\nThe result is: #{firstNumber - secondNumber}"
    when 4
        puts "\nThe result is: #{firstNumber / secondNumber}"
    when 0
        puts "\nBye bye..."
        break
    else
        puts "\nUndefined option"
    end
end