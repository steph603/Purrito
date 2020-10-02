require 'yaml'

module Guests
    # Load YAML database, if it doesn't exist, create an empty one
    CATS = YAML.load(File.read('cats.yml')) rescue []
    def self.all
        CATS
    end
end






