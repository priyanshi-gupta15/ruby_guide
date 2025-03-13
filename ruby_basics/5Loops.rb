puts "while loop"
i=2
while i>0
  puts i
  #i--  i++ not use instead
  i-=1
end

puts "until loop"
k = 1



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
# 
