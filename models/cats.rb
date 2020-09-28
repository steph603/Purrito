require 'yaml'

module Guests

    CATS = YAML.load(File.read('cats.yml')) rescue []

    def self.all
        CATS
    end

end
