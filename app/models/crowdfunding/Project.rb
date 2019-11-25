class Project
  
  attr_reader :owner, :name, :goal
  
  @@all = []

  def initialize(owner, name, goal)
    @owner = owner
    @name = name
    @goal = goal
    self.class.all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|pledge| pledge.project == self}
    # if there are none, i expect this to return an empty array 
  end

  def amount_pledged
    #the sum total of all pledge amounts
    amounts = pledges.map {|pledge| pledge.amount}
    amounts.sum
  end

  def backers
    #return array of backers for a project
    pledges.map {|pledge| pledge.user}
  end

  def self.no_pledges
    # should this be matched to an empty array or to nil?
    self.all.select {|project| project.pledges == []}
  end

  def self.above_goal
    # for each project, sum of the pledges' amount
    self.all.select {|project| project.amount_pledged > project.goal}
  end

  def self.most_backers
    self.all.max_by {|project| project.backers.length}
  end


end