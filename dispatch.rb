require_relative 'models/cats'
require_relative 'controllers/controller'


def dispatch(cmd)
    if ['1'].include? cmd
        ::Controller.check_in_out(cmd)

    elsif ['2'].include? cmd
        ::Controller.check_in_out(cmd)

    elsif ['3'].include? cmd
        puts "Hello, this is dispatch!".blue
        ::Controller.new_cat

    elsif ['4'].include? cmd
        puts 'View all cats'
        ::Controller.index

    elsif ['5'].include? cmd
        ::Controller.index

    elsif ['6'].include? cmd
        puts '6 - View Single Cat'

    elsif ['7'].include? cmd
        puts '7 - Show Meals'

    else
        unless ['quit', 'q', 'exit', '8'].include? cmd
            puts 'Invalid Selection - Please Try Again'.red
    end
    
    end
#  puts 'Goodbye! 🐱'
end