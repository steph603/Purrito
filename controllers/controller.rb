require_relative '../models/cats'
require_relative '../views/index'
require_relative '../views/check'
require_relative '../views/new'
require_relative '../views/displaycat'
require_relative '../views/meals'
require_relative '../views/edit'

module Controller
 
    # Directs to show either all cats, or all checked in cats
    def self.index(which)
        all_cats = Guests.all
        ::Views::Guests::index(which: which, all_cats: all_cats)
    end 

    # Shows prompts to switches checking in/out and processes cat accordingly
    def self.check_in_out(inout)
        all_cats = Guests.all
        inout.to_i == 1 ? (inout = 'in') : (inout = 'out')
        ::Views::Guests::check(inout: inout, all_cats: all_cats)
    end

# Shows promptes to create a new cat
    def self.new_cat
        all_cats = Guests.all
        ::Views::Guests::create(all_cats: all_cats)
    end

    # Shows an individual cat  
    #ONLY USE ID
    def self.displays
        all_cats = Guests.all
        ::Views::Guests::show_cat(all_cats: all_cats)
    end

    def self.show_meals
        all_cats = Guests.all
        ::Views::Guests::show_meals
    end
end