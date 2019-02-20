# take the first number
# take modifier
# take the last number
# puts result
# error checking
# user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# - make + - * / work
#  + work
#  - work
#  * work
#  / work
# - make clear work
# Exit - to end program
def calc()
    system "clear"
    while true
        print "Enter first number: "
        num1 = gets.chomp
        if num1 =~ /[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)/
            break
        end
    end

    while true
        print "Enter a operator: "
        operator = gets.chomp
        if operator == "+" || operator == "-" || operator == "/" || operator == "*"
            break
        end
    end

    while true
        print "Enter second number: "
        num2 = gets.chomp
        if num2 =~ /[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)/
            break
        end
    end
            
    if operator == "+"
        puts "#{num1.to_f} + #{num2.to_f} = #{(num1.to_f + num2.to_f).round(2)}"
    elsif operator == "-"
        puts "#{num1.to_f} - #{num2.to_f} = #{(num1.to_f - num2.to_f).round(2)}"
    elsif operator == "*"
        puts "#{num1.to_f} * #{num2.to_f} = #{(num1.to_f * num2.to_f).round(2)}"
    elsif operator == "/"
        puts "#{num1.to_f} / #{num2.to_f} = #{(num1.to_f / num2.to_f).round(2)}"  
    else
        puts "Please try again"
    end

    puts "Would you like to calculate again? Y/N"
    answer = gets.chomp

    if answer == "y" || answer == "Y"
        calc
    elsif answer == "n" || answer == "N"
        system "clear"
        exit
    else
        puts "Please type 'y' or 'n'"
    end
end

calc


