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
  @b_index = @array.index(b) #We need this "b" to be the one after "a" at all times
  # We can add an if statement checking if the b_index occurs before or after a_index
  #Then if not, we reassign to the next occuring value. Until we get one value that occurs after a_index
  #We need: a loop and case statement
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


@array