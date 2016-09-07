require_relative 'human'
class Wizard
  @health = 50
  @intelligence = 25
  def heal
    @health +=10
    return self
  end
  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      true
    else
      false
  end
end
