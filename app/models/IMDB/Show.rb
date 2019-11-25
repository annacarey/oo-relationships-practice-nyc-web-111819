class Show
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def episodes
        Episode.all.select do |episode|
            episode.show == self 
        end 
    end 

end