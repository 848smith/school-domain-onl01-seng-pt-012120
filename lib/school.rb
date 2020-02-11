class School
  attr_accessor :roster
  
  def initialize(name)
    @roster = {}
  end
  
  def add_student(name, x)
    @roster[x] ||= []
    @roster[x] << name
  end
  
  def grade(x)
    @roster[x]
  end
  
  def sort
    @roster.collect do |x, name|
      name.sort
    end
    @roster
  end
end

