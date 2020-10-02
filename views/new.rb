require 'yaml'
require 'colorize'
require 'tty-prompt'
module Views
    module Guests
        def self.create(all_cats:)
            # I'm happy that this counter will suffice for this app - 
            # cats will never be deleted from the app as they may be considered components of medical records
            # and be required to be kept.  If entries were able to be deleted, unique identifiers would need to be created
            # or rather than deleting cats, set them to 'inactive' and exclude them from any activity. 
            id_counter = all_cats.length
            id_counter += 1
            prompt = TTY::Prompt.new(active_color: :magenta)   
            
            # Validation - ensure user enters two or more letters
            def self.get_info(msg)   
                validationMessage = "Must contain between 2 and 10 letters.  Please try again."
                prompt = TTY::Prompt.new(active_color: :magenta) 
                answer = prompt.ask(msg) do |q|
                    q.validate(/\D{2,}/, validationMessage)
                end
                # Regex matches strings 2-10. if I have 12 letters it would match twice.
                # This statement catches it.
                if answer.length > 10
                    puts validationMessage
                    answer = self.get_info(msg)
                end
                return answer
            end

            #Prompts to request data from user
            puts 'Please enter the below details:'.bold  
            name = get_info('Name:'.bold)
            breed = get_info('Breed:'.bold)
            colour = get_info('Colour:'.bold)
            am = get_info("What does #{name.capitalize} eat in the morning?".bold)
            pm = get_info("What does #{name.capitalize} eat in the evening?".bold)
            spicy = prompt.ask("What is #{name.capitalize}\'s spicy level? (0-3)".bold){|q| q.in("0-3")}
           
            # Add cat to CATS array
            all_cats << {checked_in: false, id: id_counter, name: name.capitalize, breed: breed.capitalize, colour: colour.capitalize, AM: [] << am.capitalize, PM: [] << pm.capitalize, spicy: ("🌶️ " * spicy.to_i)}
            
            # Save CATS array to YAML
            File.open('cats.yml', 'w') {|file| 
                file.write(all_cats.to_yaml)
            }
            puts "\n#{name.capitalize} has been successfully added!  Their ID is ##{id_counter}".magenta
        end
    end
end
