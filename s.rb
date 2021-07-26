require 'pry-byebug'

@array = [4,3,78,2,0,2]




def compare_values(a,b)
  case a<=>b
  when -1
    return "-1"
  when 0
    return "0"
  when 1
    switch_index(a,b)
  end
end

def get_index(a,b)
  @a_index = @array.index(a)
  @b_index = @array.index(b)
end

def switch_index(a,b)
  get_index(a,b)
  @array[@a_index] = b
  @array[@b_index] = a
end

@array.reduce() do |a, b|
  binding.pry
  #Compare A & B. 
  #If a > b: swap index positions
  #Then assign b = a since the next iteration, b will change to the next value
  compare_values(a,b)

  puts "A: #{a} B: #{b}"
end

