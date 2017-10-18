class Person
  # attr_reader :name, :age
  # attr_writer :age
  attr_accessor :name, :age

  def initialize(name, age, weight, email)
    @name = name
    @age = age
    @weight = weight
    puts self.greet("mundo")
  end

  def greet(other_person)
    random_number = self.random_number
    "Hola #{other_person}! me llamo #{@name}"
  end

  def grow
    @age += 1
  end

  def is_dead?
    if @age >= 100
      true
    else
      false
    end
  end

  def getFat
    @weight += 10
  end

  def do_exercise
    @weight -= 5
  end

  # Creamos la función getter para name
  # def name
  #   @name
  # end

  # Creamos la función setter para name
  # def name=(name)
  #   @name = name
  # end

  def random_number
    rand(1..10)
  end
end

p1 = Person.new("Simon", 25)
puts p1.greet("clase")
puts p1.name
puts p1.age
# p1.age = 26
p1.grow
puts p1.age
p1.name = "Juan"
puts p1.name
puts p1.class
puts p1.isDead?
100.times do
  p1.grow
end
puts p1.age
puts p1.isDead?
