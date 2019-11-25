class Character 

  attr_reader :name, :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor 
    self.class.all << self
  end 

  def self.all
    @@all 
  end 

  def appearances
    Appearance.all.select {|appearance| appearance.character == self}
  end

  def movies
    movie_appearances = appearances.select {|appearance| appearance.production.class == Movie}
    movie_appearances.map {|ma| ma.production}
  end

  def episodes
    episode_appearances = appearances.select {|appearance| appearance.production.class == Episode}
    episode_appearances.map {|ma| ma.production}
  end

  def shows
    shows_of_episodes = episodes.map {|episode| episode.show}
    shows_of_episodes.uniq
  end
 

  def self.most_appearances
    all.max_by do |character|
      character.appearances.length
    end 
  end 

  # - should return which character of film/television appears in the most films
  #   or tv shows

end 