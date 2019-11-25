class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self

  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|pledge| pledge.user == self}
  end

  def owned
    Project.all.select {|project| project.owner == self}
  end

  def backed
    projects = pledges.map {|pledge| pledge.project}
    projects.uniq
  end

  def create_project(name, goal)
    Project.new(self, name, goal)
  end

  def back_project(project, amount)
    Pledge.new(self, project, amount)
  end

  def self.highest_pledge
    max_pledge = Pledge.all.max_by {|pledge| pledge.amount}
    max_pledge.user
  end

  def self.multi_pledger
    User.all.select {|user| user.backed.length > 1}
  end

  def self.project_creator
    User.all.select {|user| user.owned.length > 0}
  end

end