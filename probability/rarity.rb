require 'colorize'
#version 0.1 -> user script for checking/assigning rarity to a received album release


#requests user input regarding the color traits of the release run

def user_input

puts "Please enter quantity of each color"

puts "Grey"
@user_grey = gets.to_i

puts "Yellow"
@user_yellow = gets.to_i

puts "Blue"
@user_blue = gets.to_i

puts "Red"
@user_red = gets.to_i

puts "Green"
@user_green = gets.to_i


#using inject() to get array total

@user_total = [@user_grey + @user_yellow + @user_blue + @user_red + @user_green]
@user_int = @user_total.inject(0){|sum,x| sum + x }


#checks to see if the overall user_input quantity totals five; throws error if it is not.

if @user_int != 5
  then puts "\nERROR: The inputted quantity must be exactly five. Correct your input and try again. \n ".red #uses Colorize gem
  user_input
end


#checking to see if the user_input quantity is zero; if so, it replaces it with a value of 1

if (@var = @user_grey.to_s.include? "0") and @var == true
  then
  @user_grey = 1
end

if (@var = @user_yellow.to_s.include? "0") and @var == true
  then
  @user_yellow = 1
end

if (@var = @user_blue.to_s.include? "0") and @var == true
  then
  @user_blue = 1
end

if (@var = @user_red.to_s.include? "0") and @var == true
  then
  @user_red = 1
end

if (@var = @user_green.to_s.include? "0") and @var == true
  then
  @user_green = 1
end

overall

  end


#determines information about the total quantity of tranche supply

def overall

  # total percent for each: grey, yellow, blue, red, green.
  # presuming there are 40 total tapes which would span eight releases
  # independent probability that a run contains a certain color

  @overall_full_perc = [(26.0/40.0)*100, (4.0/40.0)*100, (1.0/40.0)*100, (2.0/40.0)*100, (3.0/40.0)*100]
  @overall_perc = [(26.0/40.0), (4.0/40.0), (1.0/40.0), (2.0/40.0), (3.0/40.0)]

  @grey_perc = @overall_perc[0]
  @yellow_perc = @overall_perc[1]
  @blue_perc = @overall_perc[2]
  @red_perc = @overall_perc[3]
  @green_perc = @overall_perc[4]


  #total number of each color

  @grey_total = 26
  @yellow_total = 4
  @blue_total = 1
  @red_total = 2
  @green_total = 3
  @overall_total = [@grey_total + @yellow_total + @blue_total + @red_total + @green_total]
  @overall_int = @overall_total.inject(0){|sum,x| sum + x }

prob_input

  end


#sets variables for release run quantity relative to tranche rarity

def prob_input

  @rarity_set = (5 / @grey_total.to_r * @user_grey) / (5 / @yellow_total.to_r * @user_yellow) / (5 / @blue_total.to_r * @user_blue) / (5 / @red_total.to_r * @user_red) / (5 / @green_total.to_r * @user_green)
  @rarity_run = @rarity_set * 1/35.to_r

  prng = Random.new
  @rarity_rand = @rarity_run * prng.rand(333)

user_input_unit

  end


#requests user input regarding the color traits of their release copy

def user_input_unit

  puts "\nPlease enter the color of your album copy:".green #uses Colorize gem

  @unit_color = gets.chomp.downcase.gsub(/\s+/, "")

  if @unit_color == "grey"
    then @unit_var = @grey_perc
  elsif @unit_color == "yellow"
    then @unit_var = @yellow_perc
  elsif @unit_color == "blue"
    then @unit_var = @blue_perc
  elsif @unit_color == "red"
    then @unit_var = @red_perc
  elsif @unit_color == "green"
    then @unit_var = @green_perc
  else
    puts "\nSomething went wrong: could not read input, please check for spelling or other errors.".red #uses Colorize gem
    user_input_unit
  end

#call unit_rarity

    end

user_input
