class Owner
  attr_accessor :all
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    return "I am a #{species}."
  end
  
  def self.all
    return @@all
  end
  
  def self.count
    return @@all.count
  end
  
  def self.reset_all
    @@all = []
  end

  def cats
    return Cat.all.find_all {|x| x.owner == self}
  end
  
  def dogs
    return Dog.all.find_all {|x| x.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def dog(name)
    dog = Dog.new(name, self)
  end
end