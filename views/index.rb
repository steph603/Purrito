module Views
    module Guests
        def index(all_cats:)
            puts 'All the cats!'
            cats_map = all_cats.map { |cat| cat.values}
            puts cats_map
        end
        module_function :index
    end
    
end
