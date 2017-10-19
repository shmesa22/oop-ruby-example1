module Make_It_Real
  NUMBER_OF_STUDENTS = 7
  TIME_TO_START = 18
  TIME_TO_END = 21

  class Person
    def initialize(name)
      @name = name
    end

    def greet
      "Hola me llamo #{@name}"
    end
  end

  def write_code
    puts "..."
    puts "..."
    puts "¡Hago lo que puedo!"
  end

  def is_sleep?(is_late, class_is_boring)
    if is_late && class_is_boring
      "Estaba descansando los parpados."
    else
      "No, la clase está muy interesante."
    end
  end
end

puts Make_It_Real::NUMBER_OF_STUDENTS
puts Make_It_Real::TIME_TO_START
puts Make_It_Real::TIME_TO_END

p1 = Make_It_Real::Person.new("Simon")
puts p1.greet

class Student
  include Make_It_Real

  def initialize(name)
    puts "La clase inicia a las #{TIME_TO_START} en punto"
    @student = Person.new(name)
    puts @student.greet
    puts self.write_code
  end
end

s1 = Student.new("Felipe")
puts s1.write_code
puts s1.is_sleep?(true, true)
