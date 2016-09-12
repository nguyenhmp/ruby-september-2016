puts 'I am in the dragon file'
require_relative 'mammal'
class Dragon < Mammal

  def initialize
    @health = 150
	end

  def fly
    @health = @health - 10
    self
  end

  def attackTown
    @health = @health - 50
    self
  end

  def eat_humans
    @health = @health + 20
    self
  end
end

drago = Dragon.new
drago.display_health
drago.eat_humans.eat_humans.display_health
