require_relative 'Zoo'

class Animal
    attr_accessor :species, :weight, :nickname, :zoo
    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.find_by_species(species_find)
        animal = self.all.select{|animals| animals.species == species_find}
        animal.map{|animals| animals.nickname}
    end

    def self.all
        @@all
    end

end

