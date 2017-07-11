class Field

attr_reader :type, :hectares

  def initialize(type, hectares)
    @type = type
    @hectares = hectares
    puts "i'm a #{@type} i'm #{@hectares} hectares"
  end
end


one = Field.new('corn', 40)

puts one.field_yeild('corn', 40)
