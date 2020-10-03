module Views
    module Guests
        
        # Table display for individual cat
        def self.id_card(cat)
            cat = cat[0]
            id_card = TTY::Table.new(header: ["##{cat[:id]} - #{cat[:name]}    #{cat[:spicy]}".bold.magenta])
            id_card << ["#{"Breed & Colour:".bold.magenta}  #{cat[:colour]} #{cat[:breed]}"] << ["#{"Morning:".bold.magenta} #{cat[:AM][0].to_s}"] << ["#{"Evening:".bold.magenta}  #{cat[:PM][0].to_s}"]
            cat[:checked_in] ? (id_card << ["#{"Currently Checked:".bold.magenta} #{"IN".bold.green}"]) :(id_card << ["#{"Currently Checked".bold.magenta} #{"OUT".bold.red}"]) 
            
            puts id_card.render(:unicode, padding: [1,1,1,1])
        end

        # Table display for meals at a given time of day (prompt = time)
        def self.meals(guests, prompt)
            guests = guests[:checked_cats]
            meals_table = TTY::Table.new(header: ['Name'.bold.magenta, 'Meal'.bold.magenta])
            guests.each {|guest| meals_table << ["#{guest[:name]}  #{guest[:spicy]}", guest[prompt][0].to_s]}
            puts meals_table.render(:unicode, padding: [1,1,1,1])
            if guests.length == 0
                puts "No meals to display!"
            end
        end

        # Table display for cats (either checked in only or all)
        def self.cats_table(cats)
            table = TTY::Table.new(header: ['ID', 'Spicy',  'Name', 'Colour', 'Breed', 'Morning Meal', 'Evening Meal', 'Checked In?'] )
            cats.each {|cat| 
                cat[:checked_in] ? (inout = 'YES'.green) : (inout = '')
                table << [ cat[:id], cat[:spicy], cat[:name], cat[:colour], cat[:breed], cat[:AM][0].to_s, cat[:PM][0].to_s, inout]
            }
            puts table.render(:unicode, padding: [1,1,1,1])
            if cats.length == 0 
                puts "No cats to show!"
            end
        end
    end
end