module Views
    module Guests
        def create(all_cats:)
        id_counter = 4
        id_counter += 1

            id_counter = 4
            id_counter += 1
            puts 'Please enter the following'.bold
            puts 'Name:'
            name = gets.chomp.capitalize
            puts 'Breed:'
            breed = gets.chomp
            puts 'Colour:'
            colour = gets.chomp.capitalize
            puts "What does #{name} eat in the morning?"
            am = gets.chomp.capitalize
            puts "What does #{name} eat in the evening?"
            pm = gets.chomp.capitalize
            puts "Spiciness rating (0-3)"
            spicy = gets.chomp.to_i 

            puts name, breed, colour, am, pm
            puts all_cats
           puts id_counter
           all_cats << {checked_in: false, id: id_counter, name: name, breed: breed, colour: colour, AM: [] << am, PM: [] << pm, spicy: spicy}
           puts all_cats

        end
        module_function :create
    end
end
