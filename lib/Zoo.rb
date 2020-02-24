require_relative 'Animal'

class Zoo

attr_accessor :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def animals
        zoo = Animal.all.select{|animals| animals.zoo == self}
        zoo.map{|animals|"#{animals.nickname} the #{animals.species}"}
    end

    def animal_species
        self.animals.map{|zoo|zoo.species}
    end

    def animal_nicknames
        self.animals.map{|zoo|zoo.nickname}
    end

    def find_by_species(species_find)
        animal = self.animals.select{|zoo|zoo.species == species_find}
        animal.map{|animal| animal.nickname}
    end

    def self.find_by_location(location_find)
        zoos = self.all.select{|zoo| zoo.location == location_find}
        zoos.map{|zoo| zoo.name}
    end

    def self.all
        @@all
    end

end
