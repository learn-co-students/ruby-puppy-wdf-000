class Dog
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      # puts @@all.collect {|name| name}
        puts @@all.collect(&:name)
  end

  def self.clear_all
    @@all.clear
  end

end
