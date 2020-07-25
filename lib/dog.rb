class Dog

@@all = []

def self.clear_all
  @@all.clear
end

def self.all
  @@all.each {|dog| puts dog.name}
end

def initialize(name)
  @name = name
  @@all << self
end

def name
  @name
end

end
