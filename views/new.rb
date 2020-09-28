require 'yaml'
require 'colorize'
module Views
    module Guests
        def self.create(all_cats:)
            # I'm happy that this counter will suffice for this app - 
        id_counter = all_cats.length
            # cats will never be deleted from the app as they may be considered components of medical records
            # and be required to be kept.  If entries were able to be deleted, unique identifiers would need to be created
            # or rather than deleting cats, set them to 'inactive' and exclude them from any activity. 
        id_counter += 1
            puts 'Please enter the following'.bold
            puts 'Name:'.bold
            name = gets.chomp.capitalize
            puts 'Breed:'.bold
            breed = gets.chomp
            puts 'Colour:'.bold
            colour = gets.chomp.capitalize
            puts "What does #{name} eat in the morning?".bold
            am = gets.chomp.capitalize
            puts "What does #{name} eat in the evening?".bold
            pm = gets.chomp.capitalize
            puts "Spiciness level (0-3)".bold
            spicy = gets.chomp.to_i 

           all_cats << {checked_in: false, id: id_counter, name: name, breed: breed, colour: colour, AM: [] << am, PM: [] << pm, spicy: spicy}

            File.open('cats.yml', 'w') {|file| file.write(all_cats.to_yaml)}

        end
    end
end
