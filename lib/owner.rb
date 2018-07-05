require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species, :say_species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @species = "human"
    @say_species = "I am a human."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def buy_fish(name)
    name = Fish.new(name)
    pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    pets[:dogs] << name
  end

  def walk_dogs
    pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    pets[:cats][0].mood = 'happy'
  end

  def feed_fish
    pets[:fishes][0].mood = 'happy'
  end

  def sell_pets
    pets.each do |pet, pet_item|
      pet_item.each do |object|
        if object.mood == "happy"
           object.mood = "nervous"
        else
          object.mood
        end
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end

# binding.pry
# puts "hi"
