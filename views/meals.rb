require 'tty-table'
module Views
    module Guests
        def self.show_meals(checked_cats)
                choices = [
                     { name: " Morning", value: :AM},     
                     { name: " Evening", value: :PM}
                   ]    
                    prompt = TTY::Prompt.new(symbols: {marker: "🌶️ "}).select("\n\nIs it morning or evening??\n".bold, choices, cycle: true, per_page: 2, active_color: :magenta)
                    prompt == :AM ? (time = 'morning') : (time = 'evening')

                puts "\nGood #{time}!  Here are the meals to prepare:".magenta
                checked_cats[:checked_cats].each {|cat| puts cat[:name], cat[prompt]}

        end
    end
end
