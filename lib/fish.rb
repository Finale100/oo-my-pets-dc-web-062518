class Fish

  attr_reader :name
  attr_accessor :mood

  @@count = 0

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @@count += 1
  end

  def self.count
    @@count
  end
end
