class Field

attr_reader :type, :hectares

def initialize(type, hectares)
  @type = type
  @hectares = hectares
  puts "i'm a #{@type} i'm #{@hectares} hectares"
end

def field_yeild(type, hectares)
  case type
  when 'corn' then x = 20
  when 'wheat' then x = 30
  else x = 0
  end
  food = 0
    food = food + (x * hectares)
  return food
end

end

class CornField < Field

end

one = Field.new('corn', 40)

puts one.field_yeild('corn', 40)
