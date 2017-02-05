# Going to use the same layout as my game for ex31 in chap34 but
# improve it.

module Ending

  def Ending.read(num1, num2)
    text = File.open("story_text.txt")
    puts text.readlines[num1..num2]
    text.close
    # Not ideal because of file slurping and stuff. Will review.
  end

  def Ending.finish
    puts "The End."
    exit(0)
  end

  def Ending.too_long
    puts "You take too long to decide."
  end

  def Ending.tell_yes
    read(21, 25)
    finish
  end

  def Ending.tell_no
    read(28, 30)
    finish
  end

  def Ending.tell_else
    read(33, 36)
    finish
  end

  def Ending.swim_yes
    read(49, 53)
    finish
  end

  def Ending.swim_no
    read(56, 58)
    finish
  end

  def Ending.swim_else
    too_long
    read(61, 63)
    finish
  end

  def Ending.bucca_yes
    read(72, 75)
    finish
  end

  def Ending.bucca_no
    read(78, 82)
    finish
  end

  def Ending.bucca_else
    too_long
    read(85, 87)
    finish
  end

  def Ending.giant_death
    too_long
    read(90, 92)
    finish
  end

  def Ending.piskie_else
    too_long
    read(95, 97)
    finish
  end

  def Ending.spriggan_death
    read(100, 102)
    finish
  end

  def Ending.stone_circ_death
    too_long
    read(105, 107)
    finish
  end

  def Ending.tourist_death
    read(109, 112)
    finish
  end

  def Ending.road_death
    too_long
    read(115, 116)
    finish
  end

end

#Ending.bucca_else
