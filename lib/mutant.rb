class Mutant
  attr_accessor :real_name, :mutant_name, :power

  def initialize(attributes = {})
    @real_name = attributes[:real_name]
    @mutant_name = attributes[:mutant_name]
    @power = attributes[:power]
  end

  def attributes
    {
      real_name: @real_name,
      mutant_name: @mutant_name,
      power: @power
    }
  end
end
