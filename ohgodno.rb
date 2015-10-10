require "pry-byebug"
puts `clear`

@product_list = {"a1" => "needle", "a2" => "stop sign", "a3" => "blouse", "a4" => "hanger", "a5" => "rubber duck", "a6" => "shovel", "a7" => "bookmark", "a8" => "model car", "a9" => "glow stick", "a10" => "rubber band", "b1" => "tire swing", "b2" => "sharpie", "b3" => "picture frame", "b4" => "photo album", "b5" => "nail filer", "b6" => "tooth paste", "b7" => "bath fizzers", "b8" => "tissue box", "b9" => "deoderant", "b10" => "cookie jar", "c1" => "rusty nail", "c2" => "drill press", "c3" => "chalk", "c4" => "word search", "c5" => "thermometer", "c6" => "face wash", "c7" => "paint brush", "c8" => "candy wrapper", "c9" => "shoe lace", "c10" => "leg warmers" }

@product_list_2 = {"needle" => "a1", "stop sign" => "a2", "blouse" => "a3", "hanger" => "a4", "rubber duck" => "a5", "shovel" => "a6", "bookmark" => "a7", "model car" => "a8", "glow stick" => "a9", "rubber band" => "a10", "tire swing" => "b1", "sharpie" => "b2", "picture frame" => "b3", "photo album" => "b4", "nail filer" => "b5", "tooth paste" => "b6", "bath fizzers" => "b7", "tissue box" => "b8", "deoderant" => "b9", "cookie jar" => "b10", "rusty nail" => "c1", "drill press" => "c2", "chalk" => "c3", "word search" => "c4", "thermometer" => "c5", "face wash" => "c6", "paint brush" => "c7", "candy wrapper" => "c8", "shoe lace"  => "c9", "leg warmers" => "c10" }

@locations = ["a10", "a9", "a8", "a7", "a6", "a5", "a4", "a3", "a2", "a1", "c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9", "c10", "b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "b9", "b10"]

def user_continue
  puts "\n \n Press enter to continue."
  gets
end


def item_locater
  puts `clear`
  puts "Designing skynet...."
  sleep 0.5
  puts "Reviving the elder gods..."
  sleep 0.5
  puts "Generating shopping list.."
  sleep 0.5
  puts "My awesome computing power has now generated an all inclusive list of products that your puny human mind could never match. You should get a cyborg upgrade."
  puts "\n\nPlease type in your desired bays below after the prompts."

  puts "Type the names of the desired bays here, as shown  a1,b5,c6"
  bays_input = gets.chomp
  bays = bays_input.split(",")

  final = @product_list.values_at(*bays)
  puts final

  user_continue

  menu
end

def exit
puts `clear`
end
  
def distance_calculator
  puts `clear`
  puts "Type the names of the desired bays here, as shown a1,b5,c6"
  bays_distance_input = gets.chomp
  bays_distance_array = bays_distance_input.split(",")
  distance = bays_distance_array.collect {|bay|@locations.index(bay)}
  low = distance.min
  high = distance.max
  distance_range = high - low
  puts `clear`
  puts "The distance you would have to drag your carcass around the store room is\n"
  print distance_range
  user_continue
  menu
end

def collection_planner
  puts `clear`
  puts "Welcome to your journey planner. As you are a useless human in need of help I will calculate your route for you. Follow the instructions precisely or death is a high probability."
  user_continue
  puts `clear`
  puts 'Please input the items you wish to find as shown "candy wrapper", "deoderant", "hanger"'
  human_values_original = gets.chomp


  human_values = human_values_original
  final_2 = @product_list_2.values_at(human_values)
  puts final_2
  user_continue
  menu
end  

def menu
  puts `clear`
  puts "Go away and boil your head in tar. This programme is for idiots to use to work out how to walk. Because it is hard.. Apparently."
  puts "\nPlease select whih function you would like to use. Press the key indicated by the (brackets).\nI(t)em Locator?  D(i)stance Calculator?  C(o)llection Planner   or (q)uit"
  user_menu_choice = gets.chomp
  case user_menu_choice
  when "t"
    item_locater
  when "i"
    distance_calculator
  when "o"
    collection_planner
  when "q"
    exit
  end
end

menu