# 🔍 Filter with .select / .reject
# Get only odd numbers from [1..15].

# Get numbers greater than 50 from [10, 45, 60, 75].

# Remove all nil values from [1, nil, 2, nil, 3].

# Get strings longer than 3 characters from ["a", "hello", "hi", "sun"].




puts [1,2,3,4,6,5].select {|n| n.even?}.inspect
# puts [1,2,3,4,6,5].select { }



puts (1..15).select(&:odd?).inspect

puts [10, 45, 60, 75].select { |n| n > 50 }

puts [1, nil, 2, nil, 3].compact

puts ["a", "hello", "hi", "sun"].select { |word| word.length > 3 }

puts [10, 45, 60, 75].reject { |n| n > 50 }