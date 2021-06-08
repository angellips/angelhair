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


#test output
puts @user_total


if @user_total > 5
  then puts "Total quantity can not be greater than five."
  user_input
elsif @user_total < '5'
  then puts "Total quantity can not be less than five."
  user_input
end

puts "test"
puts @user_total

#.to_i.reduce(0, :+)

#overall
end

def overall

# total percent for each: grey, yellow, blue, red, green.
# presuming there are 64 total tapes which would span eight releases
# independent probability that a run contains a certain color

@overall_perc = [(54.0/64.0)*100, (4.0/64.0)*100, (1.0/64.0)*100, (2.0/64.0)*100, (3.0/64.0)*100]
@grey_perc = @overall_perc[0].truncate(2)
@yellow_perc = @overall_perc[1].truncate(2)
@blue_perc = @overall_perc[2].truncate(2)
@red_perc = @overall_perc[3].truncate(2)
@green_perc = @overall_perc[4].truncate(2)

#test output
puts @overall_perc

#total number of each color

@grey_total = 54
@yellow_total = 4
@blue_total = 1
@red_total = 2
@green_total = 3
@overall_total = [@grey_total + @yellow_total + @blue_total + @red_total + @green_total]

#test output
puts "#{@overall_total}"


prob_input
end



def prob_input

# 1/64 * 1/63 * 1/62 * 1/61 * 1/60 = probability of set



end

user_input
