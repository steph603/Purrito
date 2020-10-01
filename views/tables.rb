module Views
    module Guests

        def self.id_card(cat)
            # a = Artii:Base.new :font => 'italic'
            cat = cat[0]
            id_card = TTY::Table.new(header: ["##{cat[:id]} - #{cat[:name]}    #{cat[:spicy]}".bold.magenta])
            id_card << ["#{"Breed & Colour:".bold.magenta}  #{cat[:colour]} #{cat[:breed]}"] 
            id_card << ["#{"Morning:".bold.magenta} #{cat[:AM][0].to_s}"] 
            id_card << ["#{"Evening:".bold.magenta}  #{cat[:PM][0].to_s}"]
            cat[:checked_in] ? (id_card << ["#{"Currently Checked:".bold.magenta} #{"IN".bold.green}"]) :(id_card << ["#{"Currently Checked".bold.magenta} #{"OUT".bold.red}"]) 
            
            puts id_card.render(:unicode, padding: [1,1,1,1])
        end
    end
end