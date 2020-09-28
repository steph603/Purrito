require 'tty-table'
module Views
    module Guests
        def self.index(which:, all_cats:)
            if which == 4
                puts all_cats.select {|cat| cat[:checked_in]}
            elsif which == 5
                puts all_cats
            end
        end
    end
end