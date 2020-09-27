require_relative '../models/cats'
require_relative '../views/index'
require_relative '../views/check'
require_relative '../views/new'
require_relative '../views/displaycat'

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

    def new_cat
        all_cats = Guests.all
        puts "Hello, this is the controller".red
        ::Views::Guests::create(all_cats: all_cats)
    end

    def displays
        all_cats = Guests.all
        puts "This is the controller!"
        ::Views::Guests::show_cat(all_cats: all_cats)
    end

    module_function :index, :check_in_out, :new_cat, :displays
end