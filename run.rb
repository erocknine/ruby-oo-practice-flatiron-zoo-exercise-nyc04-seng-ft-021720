require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronx = Zoo.new("Bronx Zoo", "Bronx")
cat = Animal.new("Cat", 3, "Kitty", bronx)
panda = Animal.new("Panda", 400, "Ling Ling", bronx)

p Animal.find_by_species("Panda")
p cat.nickname
p bronx.animals
