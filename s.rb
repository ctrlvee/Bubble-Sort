require 'pry-byebug'

array = [4,3,78,2,0,2]

#binding.pry

array.reduce() do |a, b|

  #Compare A & B. 
  #If a > b: swap index positions
  #Then assign b = a since the next iteration, b will change to the next value
  
puts "A: #{a} B: #{b}"
end