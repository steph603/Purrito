require_relative 'models/cats'
require_relative 'controllers/controller'

def dispatch(cmd)
    if cmd == 1
        ::Controller.check_in_out(cmd)

    elsif cmd == 2
        ::Controller.check_in_out(cmd)

    elsif cmd == 3
        ::Controller.new_cat

    elsif cmd == 4
        ::Controller.index(cmd)

    elsif cmd == 5
        ::Controller.index(cmd)

    elsif cmd == 6
        ::Controller.displays

    elsif cmd == 7
        ::Controller.show_meals

    end
end