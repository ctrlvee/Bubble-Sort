require 'pry-byebug'

@array = [4,3,78,2,0,2]


# -1; a < b
# 0; a = b
# 1; a > b

def compare_values(a,b)
  #Depending on the value here, it will reassign a in the main function
  case a<=>b
  when -1 
    return "-1"
  when 0 
    return "0"
  when 1 
    switch_index(a,b)
    return "1"
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
  #Messes up when it reaches the last #2 because get_index finds the first occurence of "2" which is in index = 2. So it switches with that two instead.
  binding.pry
  #Compare A & B. 
  #If a > b: swap index positions
  #Then assign b = a since the next iteration, b will change to the next value
  case compare_values(a,b)
  when "-1"
    a = b
  when "0"
    a = b
  when "1"
    a = a
  end

  #puts "A: #{a} B: #{b}"
end

