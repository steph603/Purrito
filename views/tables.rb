module Views
    module Guests
        # def self.table
        # table = TTY::Table.new(header: ['Squirrel', '🌶️ 🌶️ 🌶️'])
        # table << ['AM - Wet Noodles', 'PM - Wet Noodles'] << ['c3', 'c4'] << ['🌶️', 'Something']

        # puts table.render(:unicode, padding: [1,1,0,1])
        # end

        # def self.results_table
        #         id_table = TTY::Table.new(header: ['ID #'.bold, 'Name'.bold, 'Colour'.bold, 'Breed'.bold])
        #                         results.each {|result| id_table << [result[:id], result[:name], result[:colour], result[:breed]]}
        #                     puts id_table.render(:unicode, padding: [1,1,1,1])
        # end


        def self.id_card(cat)
            cat = cat[0]
            id_card = TTY::Table.new(header: ["##{cat[:id]} - #{cat[:name]}    #{cat[:spicy]}"])
            id_card << ["#{cat[:colour]} #{cat[:breed]}"] << ["#{cat[:colour]} #{cat[:breed]}"]
            puts id_card.render(:unicode, padding: [1,1,1,1])
        end
    end
end