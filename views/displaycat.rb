require_relative 'tables'
require 'tty-table'

module Views
    module Guests
        def self.show_cat(cat:)
            id_card(cat)
        end

    end
end
