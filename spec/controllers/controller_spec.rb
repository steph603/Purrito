require_relative '../../controllers/controller'

RSpec.describe Controller do

    describe 'Menu option 5 - View All Cats / index' do
        it 'should send all cats to be printed into index tables' do
            expect(Views::Guests).to receive(:index).with(cats: Guests.all)
            Controller.index(5)
        end
    end

    describe 'Menu option 5 - View All Cats / index' do
        it 'should send all cats to be printed into index tables' do
            expect(Views::Guests).to receive(:create).with(all_cats: Guests.all)
            Controller.new_cat
        end
    end

    describe 'Displays ' do
        it 'should return the details of one cat' do
            allow(STDIN).to receive(:gets).and_return("1\n")
        expect(Views::Guests).to receive(:show_cat).with(cat: [Guests.all[0]])

        Controller.displays
       

    end
end


end
