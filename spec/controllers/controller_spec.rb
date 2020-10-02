require_relative '../../controllers/controller'

RSpec.describe Controller do

    #This tests that the menu option 'View All Cats' successfully passes
    # all_cats (YAML file) to the views method 'index' to be displayed as a table
    describe 'Menu option 5 - View All Cats / index' do
        it 'should send all cats to be printed into index tables' do
            expect(Views::Guests).to receive(:index).with(cats: Guests.all)
            Controller.index(5)
        end
    end

    #This tests that the menu option 'Create New Cat' successfully passes all_cats (the cats contained in YAML)
    #to the correct views method (create)
    describe 'Create new cat (Menu 3)' do
        it 'should send all_cats (YAML db) to new cat prompts' do
            expect(Views::Guests).to receive(:create).with(all_cats: Guests.all)
            Controller.new_cat
        end
    end

        # Test display of one cat - should return one cat (Get STDIN working) 
        # Looks like TTY-Prompt input requires a tty/prompt/test to work and I can't work it out!
        
        # Assumes at least ONE valid entry in the database
        # This test does work but does require manual input!

        # describe 'Displays ' do
        #     it 'should return the details of one cat' do
        #         expect(Views::Guests).to receive(:show_cat).with(cat: [Guests.all[0]])
        #         Controller.displays
                
        #     allow($STDIN).to receive(:prompt).and_return("1")
        #   end
        # end
end
