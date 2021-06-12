require 'colorize'
require 'standard_deviation'
#absolute mess of a testing ground for everything related to -> rarity.rb


#simplify this entire section
#captures user input regarding release run

def user_input


#requests user_input regarding the color traits of the release run

puts "Please enter quantity of each color:"

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

#test output
puts @overall_perc
puts @overall_decimal_perc

#total number of each color

@grey_total = 26
@yellow_total = 4
@blue_total = 1
@red_total = 2
@green_total = 3
@overall_total = [@grey_total + @yellow_total + @blue_total + @red_total + @green_total]
@overall_int = @overall_total.inject(0){|sum,x| sum + x }


#test output
puts @overall_int
puts @overall_total


prob_input
end



def prob_input

# 1/64 * 1/63 * 1/62 * 1/61 * 1/60 = probability of set

#divide user color input by five and multiply by var_perc in order to determine probability of receiving that number of the color {??????} I think this works.
#possibly combine the above for each user input and you will have the overall probability of the release run {?????} did i figure it out lmao???


#may need to make this as an array and pass each user_color through a check for zero quantity, as it will throw an error otherwise
#variables of user below are for testing


#testing

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

@user_total = [@user_grey + @user_yellow + @user_blue + @user_red + @user_green]
@user_int = @user_total.inject(0){|sum,x| sum + x }

#TESTING

@overall_perc = [(26.0/40.0), (4.0/40.0), (1.0/40.0), (2.0/40.0), (3.0/40.0)]

@grey_perc = @overall_perc[0]
@yellow_perc = @overall_perc[1]
@blue_perc = @overall_perc[2]
@red_perc = @overall_perc[3]
@green_perc = @overall_perc[4]

@overall_full_perc = [(26.0/40.0)*100, (4.0/40.0)*100, (1.0/40.0)*100, (2.0/40.0)*100, (3.0/40.0)*100]
@grey_full_perc = @overall_full_perc[0]
@yellow_full_perc = @overall_full_perc[1]
@blue_full_perc = @overall_full_perc[2]
@red_full_perc = @overall_full_perc[3]
@green_full_perc = @overall_full_perc[4]

#testing
@grey_total = 26
@yellow_total = 4
@blue_total = 1
@red_total = 2
@green_total = 3


#test for nil

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





puts @user_grey



#need to times rariry_set by the overall tape count
#may need to make this as an array and pass each user_color through a check for zero quantity, as it will throw an error otherwise


#replace variables as needed in order to fit color quantites
@rarity_set = (5 / @grey_total.to_r * @user_grey) / (5 / @yellow_total.to_r * @user_yellow) / (5 / @blue_total.to_r * @user_blue) / (5 / @red_total.to_r * @user_red) / (5 / @green_total.to_r * @user_green)
@rarity_run = @rarity_set * 1/35.to_r





prng = Random.new
@rarity_rand = @rarity_run * prng.rand(333)


puts "rarity set"
puts @rarity_set
puts "rarity_run"
puts @rarity_run
puts "random"
puts @rarity_rand
puts "rarity to float"
puts @rarity_set.to_f
puts "rarity_run to float"
puts @rarity_run.to_f



# testing

end



#use this section to query the color unit and then run that against rarity_run.to_f ->>> "if input == grey then var = grey_perc ... then var / rarity_run.to_f
#then compare that output relative to a standard deviation from the most common release_run (five grey)
#then assign a rarity_char i.e., "common", "rare", "super rare" "special" or whatever

def user_input_unit

puts "\nPlease enter the color of your album copy:".green #uses Colorize gem

@unit_color = gets.chomp.downcase.gsub(/\s+/, "")


#make final elsif statement be "Something went wrong: could not read input, please check for spelling or other errors."

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

puts @unit_var

unit_rarity

end


def unit_rarity

  #use this section to query the color unit and then run that against rarity_run.to_f ->>> "if input == grey then var = grey_perc ... then var / rarity_run.to_f
  #then compare that output relative to a standard deviation from the most common release_run, least common release run
  #then assign a rarity_char i.e., "common", "rare", "super rare" "special" or whatever

  #could write a sequence that runs every possibility of the set and pass each result to an array which I could then run a stdev on


@unit_dev = (@unit_var / @rarity_run)

#math for second comment of Def; write code for determining value of most/least common then common_std = [most common, least common].standard_dev
#then rarity_dev = [@unit_std, common_std].stdev
#then multiple instacnes of something like, array would be ideal: if @rarity_dev >= 20%, 30%, etc. puts "your unit rarity quality is 54%"


#most common, least common rarity_run

@common_std = [0.0010549450549450549, 7.032967032967034].stdev
@rarity_dev = [@unit_dev, @common_std].stdev

puts "Your rarity score is #{@rarity_dev}. Congrats!".yellow



#determine rarity by percentage away from @unit_dev



#add in calculations for tranche vs. tranche rarity after the first release tranche has been completed and new stock sourced

end

prob_input

#TESTING
