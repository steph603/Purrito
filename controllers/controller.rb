require_relative '../models/cats'
require_relative '../views/index'
require_relative '../views/check'
require_relative '../views/new'
require_relative '../views/displaycat'
require_relative '../views/meals'

module Controller


    def self.get_info(msg)   
        prompt = TTY::Prompt.new(active_color: :magenta) 
        prompt.ask(msg) do |q|
            q.validate(/\D{2,}/, "Must contain two or more letters.  Please try again.")
        end   
    end

    def self.search
        #Allows user to search for a cat by ID number or by name
        all_cats = Guests.all

        prompt = TTY::Prompt.new(active_color: :magenta).ask('Please enter the cat\'s name, or ID# if you know it'.bold) do |q|
            q.validate(/\w{1,}/, "Response must contain at least one letter or at least one number.  Please try again.")
        end
        # If user knows the ID number, the cat is returned immediately
        if prompt == prompt.to_i.to_s
            cat = all_cats.select{|cat| 
                cat[:id] == prompt.to_i
            }
            return cat
        else
            results = all_cats.select{|cat| cat[:name].include? prompt.chomp.strip.capitalize}
            # If the user would like to search by name, follow the below prompts
            if results.length == 1
                cat = results
            elsif results.length > 1
                puts 'Here are the results!'
                id_table = TTY::Table.new(header: ['ID #'.bold, 'Name'.bold, 'Colour'.bold, 'Breed'.bold])
                results.each {|result|
                    id_table << [result[:id], result[:name], result[:colour], result[:breed]]
                }

                puts id_table.render(:unicode, padding: [1,1,1,1])
                prompt = TTY::Prompt.new(active_color: :magenta)
                    .ask('Which is the correct ID#?'.bold){|q|
                        q.in("1-99999", "Please enter a number between 1 and 99999")
                    }
                cat = all_cats.select{|cat|
                    cat[:id] == prompt.to_i
                }
            end
        end
    end

    # Directs to show either all cats, or all checked in cats (4/5 are menu options determining all or checked in only)
    def self.index(which)
        all_cats = Guests.all
        if which == 4
            cats = all_cats.select {|cat| 
                cat[:checked_in]
            }  
        elsif which == 5
            cats = all_cats
        end
        ::Views::Guests::index(cats: cats)
    end 

    # Sends user to search for correct cat, then sends that cat to be processed correctly
    def self.check_in_out(inout)
        all_cats = Guests.all
        cat = search()
        inout == 1 ? (inout = 'in') : (inout = 'out')
        ::Views::Guests::check(inout: inout, cat: cat)
        File.open('cats.yml', 'w') {|file| 
            file.write(all_cats.to_yaml)
        }
    end

    # Shows prompts to create a new cat
    def self.new_cat
        all_cats = Guests.all
        ::Views::Guests::create(all_cats: all_cats)
    end

    # Sends user to search for a cat, then sends cat to show_cat to be displayed in table
    def self.displays
        cat = search()
        ::Views::Guests::show_cat(cat: cat)
    end

    # Sends all checked in cats to meals to be displayed in table
    def self.show_meals
        checked_cats = Guests.all.select {|cat| 
            cat[:checked_in]
        }
        ::Views::Guests::show_meals(checked_cats: checked_cats)
    end
end