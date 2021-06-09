require 'colorize'

#simplify this entire section
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

@user_total = [@user_grey + @user_yellow + @user_blue + @user_red + @user_green]
@user_int = @user_total.inject(0){|sum,x| sum + x }

if @user_int != 5
  then puts "\nERROR: The inputted quantity must be exactly five. Correct your input and try again. \n ".red #uses Colorize gem
  user_input
else overall
end
  end

def overall

# total percent for each: grey, yellow, blue, red, green.
# presuming there are 64 total tapes which would span eight releases
# independent probability that a run contains a certain color

@overall_perc = [(26.0/40.0)*100, (4.0/40.0)*100, (1.0/40.0)*100, (2.0/40.0)*100, (3.0/40.0)*100]
@grey_perc = @overall_perc[0].truncate(2)
@yellow_perc = @overall_perc[1].truncate(2)
@blue_perc = @overall_perc[2].truncate(2)
@red_perc = @overall_perc[3].truncate(2)
@green_perc = @overall_perc[4].truncate(2)

#test output
puts @overall_perc

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


@grey_input = 1
@yellow_input = 1
@blue_input = 1
@red_input = 1
@green_input = 1

@overall_input = [@grey_input + @yellow_input + @blue_input + @red_input + @green_input]

@overall_int = @overall_input.inject(0){|sum,x| sum + x }




@input_prob = @blue_input.to_r / @overall_int.to_r

puts @input_prob

@grey_prob = 1/40r*1/39r*1/38r*1/37r*1/36r




end

user_input

#TESTING
