require 'pry'
require_relative 'field'
require_relative 'corn'
require_relative 'wheat'
class Farm

  @@total_food_produced = 0
  @@total_feilds =[]

  def main_menu
    while true # repeat indefinitely
        print_main_menu
        user_selected = gets.chomp
        call_option(user_selected)
    end
  end
  def print_main_menu
    puts "Choose Option"
    puts "field   -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status  -> displays some information about the farm"
    puts "relax   -> provides lovely descriptions of your fields"
    puts "exit    -> exits the program"
  end

  def call_option(user_selected)
    case user_selected
      when 'field'
        then
          puts "What kind of field is it: corn or wheat?"
            type = gets.chomp
          puts "How large is the field in hectares?"
            size =gets.chomp.to_i
       add_new_field(type,size)
      when 'harvest'  then harvests_crops
      when 'status'   then status
      when 'relax'    then relax
      when 'exit'     then exit

      return user_selected
    end
   end

  def add_new_field(type, size)
    new_field = 0
    if type == 'corn'
      then new_field = CornField.new(size)
    elsif type == 'wheat'
      then new_field = WheatField.new(size)
    else "Error, please try again."
    end
    @@total_feilds << new_field
  end

  def harvests_crops
    total_harvest = 0
    @@total_feilds.each do |field|
       total_harvest += field.crop_yeild
    end
    @@total_food_produced += total_harvest
    puts @@total_food_produced
  end

  def status
    puts "The farm has #{@@total_food_produced} harvested food so far"
  end

  def relax
    puts "The wind blew in from the north, across the fields. Despite the sun edging over the mountains to the east, casting back shadows and colouring in the fields, the wind still carried the last traces of a cold night."
  end

end

puts macdonald = Farm.new
puts macdonald.main_menu
