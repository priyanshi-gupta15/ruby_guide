# 🔍 Find Elements
# Find the first word that starts with "R" in ["Ruby", "Python", "Rust", "Go"].

# Find the first number divisible by 7 in [10, 14, 21, 30].




# .find (also called .detect) returns the first element in the array that matches the condition.
puts ["Ruby", "Python", "Rust", "Go"].find {|w| w.start_with?("R")}


# if want all the output then use .selct method



puts [10, 14, 21, 30].find {|n| n%7==0}
