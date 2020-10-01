require_relative 'tables'
require 'tty-table'

module Views
    module Guests
        def self.show_cat(cat:)
            begin
                id_card(cat)
            rescue
                puts "\nNo results found!  Please try again".red
            end
        end
    end
end
