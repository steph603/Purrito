module Views
    module Guests
        def self.check(inout:, cat:)
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
