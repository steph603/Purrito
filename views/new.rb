require 'yaml'
require 'colorize'
module Views
    module Guests
        def self.create(all_cats:)
        id_counter = 4
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

            puts all_cats
           puts id_counter
           all_cats << {checked_in: false, id: id_counter, name: name, breed: breed, colour: colour, AM: [] << am, PM: [] << pm, spicy: spicy}
           puts all_cats

            File.open('cats.yml', 'w') {|file| file.write(all_cats.to_yaml)}

        end
    end
end
