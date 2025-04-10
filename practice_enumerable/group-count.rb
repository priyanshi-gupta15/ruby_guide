# 📊 Group & Count
# Group numbers [1..10] by odd and even.

# Count how many names start with "A" in ["Alice", "Bob", "Ankit", "Arun"].

# Group words by their length in ["hi", "hello", "world", "go", "yo"].

# puts (1..10).group_by(:even?)

result = (1..10).group_by(&:even?)
result.each do |key, values|
  puts "#{key}: #{values}"
end

puts ["Alice", "Bob", "Ankit", "Arun"].count {|w| w.start_with?("A")}

result1 = ["hi", "hello", "world", "go", "yo"].group_by(&:length)

result1.each do |length, words|
  puts "Length #{length}: #{words.join(', ')}"
end

# /