require_relative 'controllers/controller'
require_relative 'models/cats'

def dispatch(cmd)
    if ['1'].include? cmd
        puts 'Check in a kitty!'

    elsif ['2'].include? cmd
        puts 'Check out a kitty'

    elsif ['3'].include? cmd
        puts 'Create a new kitty'

    elsif ['4'].include? cmd
        puts 'View all cats'

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
 puts 'Goodbye! 🐱'
end