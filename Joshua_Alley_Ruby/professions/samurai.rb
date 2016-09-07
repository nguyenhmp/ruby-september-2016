require_relative 'human'
class Samurai
  @@no_of_samurais = 0
  @health = 200
  @@no_of_samurais +=1
  def death_blow(obj)
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      true
    else
      false
    end
  end
  def meditate
    @health = 100
  end
  def how_many
    puts @@no_of_samurais
  end
end
