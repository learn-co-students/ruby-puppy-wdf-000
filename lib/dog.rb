class Dog
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self # add each instance of Dog to @@all class variable
  end

  def self.clear_all
    @@all.clear
  end

  def self.all
    @@all.each { |dog| puts dog.name }
  end
end
