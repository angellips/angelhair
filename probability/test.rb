
def overall

# total percent for each: grey, yellow, blue, red, green.

  # presuming there are 64 total tapes which would span eight releases

@overall_perc = [(54.0/64.0)*100, (4.0/64.0)*100, (1.0/64.0)*100, (2.0/64.0)*100, (3.0/64.0)*100]
@grey_perc = @overall_perc[0]
@yellow_perc = @overall_perc[1]
@blue_perc = @overall_perc[2]
@red_perc = @overall_perc[3]
@green_perc = @overall_perc[4]

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

prob_calc

end


def prob_calc

puts "hello world"



end

overall
