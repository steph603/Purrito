require_relative 'tables'
require 'tty-table'

module Views
    module Guests
        def self.show_cat(all_cats:)

            puts "Please enter cat's name:"
            
            search = gets.chomp.strip.capitalize
            results = all_cats.select{|cat| cat[:name].include? search}
            
            if results.length == 0
                puts "\nNo results found".red.bold

            elsif results.length == 1
                results = results[0]
                cat_card = TTY::Table.new(header: [results[:name], results[:colour], results[:breed]]) 
                cat_card << [results[:am], results[:pm], results[:spicy]]
                puts cat_card.render(:unicode, padding: [1,1,1,1])

            elsif results.length > 1

                puts 'Here are the results!'
                id_table = TTY::Table.new(header: ['ID #'.bold, 'Name'.bold, 'Colour'.bold, 'Breed'.bold])
                results.each {|result| id_table << [result[:id], result[:name], result[:colour], result[:breed]]}
                puts id_table.render(:unicode, padding: [1,1,1,1])

            puts 'Please enter the ID number of the cat you need.'

            id = gets.chomp.strip.to_i
            result = results.select{|result| [result[:id]].include? id}
puts "YOU NEED TO MAKE A TABLE".red.bold
            puts result

            end
        end

    end
end
