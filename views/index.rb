require 'tty-table'
module Views
    module Guests
        def self.index(all_cats:)
            current_guests = all_cats.select {|cat| cat[:checked_in]}
            puts current_guests
        end
    end
end