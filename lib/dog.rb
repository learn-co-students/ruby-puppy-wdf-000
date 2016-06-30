require 'pry'
class Dog
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    # binding.pry
    @@all << self
  end

  def self.clear_all
    @@all.clear
  end

  def self.all
     @@all.map do |dog|
       puts dog.name
     end
   end


end
