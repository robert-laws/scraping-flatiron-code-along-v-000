class Course
  attr_accessor :description, :schedule, :title

  @@all = []

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end
end
