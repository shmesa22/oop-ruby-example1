class NewError < StandardError
  def greet
    "Hola mundo"
  end
end

def divide(num, den)
  begin
    puts num/den
  rescue ZeroDivisionError => error
    puts error.message
  end
end

divide(2, 9)
divide(10, 0)
puts "Hola mundo"

if true
  raise NewError.new("Esto es un nuevo error, no te preocupes...") 
end

puts "Sera que si"
