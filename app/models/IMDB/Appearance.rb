class Appearance

  attr_reader :production, :character

  @@all = []

  def initialize(production, character)
    @production = production
    @character = character
    self.class.all << self
  end

  def self.all
    @@all
  end



end