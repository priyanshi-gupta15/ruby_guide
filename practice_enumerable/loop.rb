

# 🔁 Loop & Iterate
# Print each number in an array [10, 20, 30, 40]

# Print each word in ["Ruby", "Rails", "Gems"] in uppercase.

# Print index + word using .each_with_index.

[10,20,20].each do |n|
  puts n  
end


["ravi","rakesh","sheetal"].each_with_index do |word ,index|
  puts "#{index} , #{word}"
end

[10,20,20].each {|n| puts n*n}
