require_relative '../models/cats'
require_relative '../views/index'

module Controller
    def index
        puts "Here are alllll the kitties"
        all_cats = Guests.all
        ::Views::Guests::index all_cats: all_cats
    end 
    module_function :index
end