require_relative 'dog.rb'
require_relative 'cat.rb'
require 'pp'
class Owner
 attr_reader :name, :species
 
 @@all = []
 def initialize(name,species='human') 
   @name = name 
   @species = species 
   @@all << self 
  end
  def cats 
   self.Cats.all
end 

 def self.count 
  @@all.size
end 

  def say_species
     'I am a human.'
end 

 def self.all 
   @@all 
 end 
 def self.reset_all 
   @@all = []
 end 
end
