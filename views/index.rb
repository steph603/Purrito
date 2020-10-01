require_relative 'tables'

module Views
    module Guests
        def self.index(cats:)
            cats_table(cats)
        end
    end
end