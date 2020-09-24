require_relative 'controllers/controller'
require_relative 'models/cats'

def dispatch(cmd)
    if ['1'].include? cmd
        puts 'Check in a kitty!'
# ::Controller.check_in

    elsif ['2'].include? cmd
        puts 'Check out a kitty'

    elsif ['3'].include? cmd
        ::Controller.index

    elsif ['4'].include? cmd
        puts '4 - View Single Cat'

    elsif ['5'].include? cmd
        puts '5 - Show Meals'

    else
        unless ['quit', 'q', 'exit', '6'].include? cmd
            puts 'Invalid Selection - Please Try Again'.red
        end
    end

end