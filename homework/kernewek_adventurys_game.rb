require "./endings.rb"

def read(num1, num2)
  text = File.open("story_text.txt")
  puts text.readlines[num1..num2]
  text.close
  print "> "
end

def start
  read(1, 2)
  input = $stdin.gets.chomp.downcase

  if input == "yes"
    stay
  elsif input == "no"
    Ending.tourist_death
  else
    Ending.road_death
  end

end

def stay
  read(5, 8)
  stay_dec = $stdin.gets.chomp.downcase

  if stay_dec == "yes"
    play
  elsif stay_dec == "no"
    Ending.spriggan_death
  else
    Ending.stone_circ_death
  end

end

def play
  read(11, 12)
  play_dec = $stdin.gets.chomp.downcase

  if play_dec == "yes"
    tell
  elsif play_dec == "no"
    place
  else
    Ending.piskie_else
  end

end

def place
  read(39, 42)
  place_dec = $stdin.gets.chomp.downcase

  if place_dec == "sea"
    swim
  elsif place_dec == "mine"
    throw_food
  else
    Ending.giant_death
  end

end

def tell
  read(15, 18)
  tell_dec = input = $stdin.gets.chomp.downcase

  if tell_dec == "yes"
    Ending.tell_yes
  elsif tell_dec == "no"
    Ending.tell_no
  else
    Ending.tell_else
  end

end

def swim
  read(45, 46)
  swim_dec = $stdin.gets.chomp.downcase

  if swim_dec == "yes"
    Ending.swim_yes
  elsif swim_dec == "no"
    Ending.swim_no
  else
    Ending.swim_else
  end

end

def throw_food
  read(66, 69)
  throw_dec = $stdin.gets.chomp.downcase

  if throw_dec == "yes"
    Ending.bucca_yes
  elsif throw_dec == "no"
    Ending.bucca_no
  else
    Ending.bucca_else
  end
end

title = "\vkernewek adventurys gwari\v"
intro = "\vKernow agas dynnargh!\v"
puts title.upcase.center(75)
puts intro.center(75)

start
