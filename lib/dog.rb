class Dog
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

  def self.find_or_create_dog(dog)
    Dog.all.find { |dog| dog.name == dog } || Dog.new(dog)
  end

end