require_relative 'field'
require_relative 'corn'
require_relative 'wheat'
class Farm

  @@total_food_produced = 0
  @@total_feilds =[]

  def menu_options

    puts "Options:"
    puts "field   -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status  -> displays some information about the farm"
    puts "relax   -> provides lovely descriptions of your fields"
    puts "exit    -> exits the program"
  end

end

mcdonald = Farm.new
mcdonald.menu_options
