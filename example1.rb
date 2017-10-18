class Person
  # attr_reader :name, :age
  # attr_writer :age
  attr_accessor :name, :age

  @@class_counter = 0

  def initialize(name, age)
    @name = name
    @age = age
    @@class_counter += 1
    puts self.greet("mundo")
  end

  def greet(other_person)
    num = random_number
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

  def self.class_counter
    @@class_counter
  end

  private
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
puts p1.is_dead?
100.times do
  p1.grow
end
puts p1.age
puts p1.is_dead?
puts Person.class_counter
1000.times do
  Person.new("Cualquiera", rand(1..1000))
end
puts p1.class_counter
