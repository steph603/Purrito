require_relative 'controllers/controller.rb'

def dispatch(cmd)
    if ['1'].include? cmd
        puts 'Check in a kitty!'
    elsif ['2'].include? cmd
        puts 'Check out a kitty'
    elsif ['3'].include? cmd
        puts '3 - View All Cats'
    elsif ['4'].include? cmd
        puts '4 - View Single Cat'
    elsif ['5'].include? cmd
        puts '5 - Show Meals'
    end

end