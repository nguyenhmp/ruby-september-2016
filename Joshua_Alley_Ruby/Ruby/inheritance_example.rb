#A class can inherit functionality and variables from a superclass, sometimes referred to as a parent class or base class. Ruby does not support multiple inheritances and so a class in Ruby can have only one superclass. The syntax is as follows:

class ParentClass
  def a_method
    puts "b"
  end
end
class SomeClass < ParentClass # means inherit (or "extends if you are from Java background")
  def another_method
    puts 'a'
  end
end
instance = SomeClass.new
instance.another_method  # => "a"
instance.a_method  # => "b"
