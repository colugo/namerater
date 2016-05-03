class Name
  attr_accessor :name

  def initialize
      @name = Action.random(1).name + "-" + Title.random(1).name
  end

end
