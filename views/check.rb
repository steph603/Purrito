module Views
    module Guests
        def self.check(inout:, all_cats:)
            puts "Which cat would you like to CHECK #{inout.upcase}? (Enter ID)".green
            cat_id = gets.chomp.to_i
            cat = all_cats.select{|cat| cat[:id] == cat_id}

            if inout == 'in' && cat[0][:checked_in]
                puts "#{cat[0][:name]} is already checked in."
            elsif inout == 'in' && !cat[0][:checked_in]
                cat[0][:checked_in] = true
                puts "#{cat[0][:name]} is now checked in!"
            elsif inout == 'out' && !cat[0][:checked_in]
                puts "#{cat[0][:name]} is not currently checked in."
            elsif inout == 'out' && cat[0][:checked_in]
                cat[0][:checked_in] = false
                puts "#{cat[0][:name]} is now checked out!"
            end
        end
    end
end
