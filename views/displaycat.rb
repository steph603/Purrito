require_relative 'tables'
require 'tty-table'

module Views
    module Guests
        def self.show_cat(cat:)
            cat ? (id_card(cat)) : (puts "\nNo results found!  Please try again".red)
        end

    end
end
