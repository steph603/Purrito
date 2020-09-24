require 'tty-table'
module Views
    module Guests
        def index(all_cats:)
            puts 'All the checked in cats!'
            cats_map = all_cats.select {|cat| cat[:checked_in]}
            # cat.checked_in 
            puts cats_map
        end
        module_function :index
    end
end