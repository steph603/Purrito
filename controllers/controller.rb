require_relative '../models/cats'
require_relative '../views/index'
require_relative '../views/check'
require_relative '../views/new'
require_relative '../views/displaycat'
require_relative '../views/meals'

module Controller

    def self.search
        puts "hi!"
        ## Put TTY Prompts in here
        prompt = TTY::Prompt.new

        prompt.ask('Please enter the cat\'s name, or ID# if you know it')

        if prompt  

    end


    # Directs to show either all cats, or all checked in cats
    def self.index(which)
        all_cats = Guests.all
            if which == 4
                cats = all_cats.select {|cat| cat[:checked_in]}  
            elsif which == 5
                cats = all_cats
            end
        ::Views::Guests::index(cats: cats)
    end 

    # Shows prompts to switches checking in/out and processes cat accordingly
    def self.check_in_out(inout)
        search()
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
        checked_cats = Guests.all.select {|cat| cat[:checked_in]}
        ::Views::Guests::show_meals(checked_cats: checked_cats)
    end
end