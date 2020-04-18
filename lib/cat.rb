class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []
  def initialize(name, owner=nil)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_cat(cat)
    Cat.all.find { |cat| cat.name == cat } || Cat.new(cat)
  end

end