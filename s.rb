require 'pry-byebug'

@array = [4,3,78,2,0,2]



def compare_values(a,b)
  #Depending on the value here, it will reassign a in the main function
  # -1; a < b
  # 0; a = b
  # 1; a > b

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

def adjust_b_index
 if @b_index < @a_index
  until @b_index > @a_index
    @b_index += 1
  end
end
end

def get_index(a,b) 
  @a_index = @array.index(a)
  @b_index = @array.index(b) 
  adjust_b_index()
end

def switch_index(a,b)
  get_index(a,b)
  @array[@a_index] = b
  @array[@b_index] = a
end

def sort
  @array.reduce() do |a, b|
   
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
end


def repeatSort()
  binding.pry
  iterations = @array.size - 1

  iterations.times do |i|
    puts "This is ##{i}"
    sort()
  end
  @array
end

repeatSort()