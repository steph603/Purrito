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
                puts " \nGood #{time.capitalize}!  Here are the meals to prepare:\n".magenta.bold
                meals(checked_cats, prompt)
        end
    end
end
