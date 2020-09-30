require 'yaml'
require 'colorize'
require 'tty-prompt'
module Views
    module Guests
        def self.create(all_cats:)

            # I'm happy that this counter will suffice for this app - 
            id_counter = all_cats.length
            # cats will never be deleted from the app as they may be considered components of medical records
            # and be required to be kept.  If entries were able to be deleted, unique identifiers would need to be created
            # or rather than deleting cats, set them to 'inactive' and exclude them from any activity. 
            id_counter += 1
            prompt = TTY::Prompt.new(active_color: :magenta)   
            
            def self.get_info(msg)   
                prompt = TTY::Prompt.new(active_color: :magenta) 
                    prompt.ask(msg) do |q|
                    q.validate(/\D{2,}/, "Must contain two or more letters.  Please try again.")
                end
            end

            puts 'Please enter the below details:'.bold  
            name = get_info('Name:'.bold)
            breed = get_info('Breed:'.bold)
            colour = get_info('Colour:'.bold)
            am = get_info("What does #{name} eat in the morning?".bold)
            pm = get_info("What does #{name} eat in the evening?".bold)
            spicy = prompt.ask("What is #{name}\'s spicy level? (0-3)".bold){|q| q.in("0-3")}

           all_cats << {checked_in: false, id: id_counter, name: name.capitalize, breed: breed.capitalize, colour: colour.capitalize, AM: [] << am.capitalize, PM: [] << pm.capitalize, spicy: ("🌶️ " * spicy.to_i)}


            File.open('cats.yml', 'w') {|file| file.write(all_cats.to_yaml)}
            puts "\n#{name.capitalize} has been successfully added!  Their ID is ##{id_counter}".magenta

        end
    end
end
