require_relative '../models/cats'
require_relative '../views/index'
require_relative '../views/check'

module Controller
 
    def index
        all_cats = Guests.all
        ::Views::Guests::index(all_cats: all_cats)
    end 

    def check_in_out(inout)
        all_cats = Guests.all
        inout.to_i == 1 ? (inout = 'in') : (inout = 'out')
        ::Views::Guests::check(inout: inout, all_cats: all_cats)
    end
    module_function :index, :check_in_out
end