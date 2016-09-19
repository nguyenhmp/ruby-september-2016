
class Mammal 
  def initialize
    puts 'I am alive!'
  end
  
  def breathe  
    puts 'Inhale and exhale' 
  end  

end

class Cat < Mammal #inherits from the Mammal class 
  
  def jerk
    puts 'scratching you...'
  end 
  
  def speak  
    puts "Meow"  
  end  

  def who_am_i
    puts self
    return self # you don't have to have return. you can state "self" and ruby will know that's the last thing mentioned and will end it the same way. 
  end

end

chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
chloe.jerk # prints 'scratching you' on the screen
chloe.speak # prints 'Meow'
chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'
chloe.who_am_i #prints the cat object 
chloe.who_am_i.jerk #if you return self in the who_am_i function, you can allow the chaining of methods. 
#require relative is a method for inheritance - require relative looks in your local directory and loads up a ruby file that matches that name. 