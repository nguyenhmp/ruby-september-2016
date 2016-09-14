require_relative 'human'
class Wizard < Human
  def initialize
    @health = 50
    @intelligence = 25
  end
  def heal
    @health +=10
    return @health
  end
  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      true
    else
      false
    end
  end
  def show
     "This wizard is at #{@health} health and at #{@intelligence} intelligence."
  end
end

# iceking = Wizard.new
# puts iceking.class.ancestors.include?(Human)
