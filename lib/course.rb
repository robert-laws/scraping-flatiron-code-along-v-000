class Course
  attr_accessor :description, :schedule, :title

  @@all = []

  def initialize(title, schedule, description)
    @title = title
    @schedule = schedule
    @description = description
    @@all << self
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end
end
