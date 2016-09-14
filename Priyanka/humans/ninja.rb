require_relative "wizard"

class Ninja < Wizard
  def initialize
    @stealth = 175
  end

  def steal(obj)
    attack(obj)
	@health += 10
  end

  def get_away
    @stealth -= 15
  end
end