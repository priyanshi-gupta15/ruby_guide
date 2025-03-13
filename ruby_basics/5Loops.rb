puts "while loop"
i=2
while i>0
  puts i
  #i--  i++ not use instead
  # ✔ Runs while the condition is true.
  i-=1
end

puts "until loop"
k = 1

#  Runs until the condition becomes true.

until k>6
  puts k
  k += 1
end


puts "for loop"
for m in 1..10
  puts m
end

puts "Each Loop (Best for Arrays)"
arr = [1,2,3]
arr.each do |num|
  puts num
  
end

puts "times loop"

5.times { puts "great"}
#  More readable than while.




# about controls
# 1️⃣ break → Stops the loop

# 2️⃣ next → Skips the current iteration
    (1..5).each do |num|
      next if num == 3
      puts num
    end

# 3️⃣ redo → Repeats the same iteration
    i = 0
    while i < 3
      puts "Iteration #{i}"
      i += 1
      redo if i == 2  # Repeats when i is 2
    end



