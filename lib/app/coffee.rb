class Coffee::Roast

  @@roasts = []
  attr_accessor :name, :common_roast_names, :notes, :surface, :flavor

  def initialize
    @@roasts << self
  end

  def self.all
    @@roasts
  end



end
