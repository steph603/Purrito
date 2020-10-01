module Views
    module Guests
        def self.table
table = TTY::Table.new(header: ['Squirrel', '🌶️ 🌶️ 🌶️'])
table << ['AM - Wet Noodles', 'PM - Wet Noodles'] << ['c3', 'c4'] << ['🌶️', 'Something']

puts table.render(:unicode, padding: [1,1,0,1])
        end

        def id_card
            id_card = TTY::Table.new(["ID: *ID*"], ["Name: *Name*"], ["*Breed and colour*"])
            puts id_card.render(:unicode, padding: [1,1,1,1])
        end
    end
end