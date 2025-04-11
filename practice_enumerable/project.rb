# 🔹 Part 1: Mini Project using Enumerable
# 💡 Project: Student Report Analyzer
# ✅ Goal:
# You have a list of students with their marks. You'll:

# Filter passed students (marks >= 40)
# Find the topper
# Group students by grade
# Sort them by marks
# Calculate average marks


students = [
  { name: "Priya", marks: 88 },
  { name: "Ravi", marks: 39 },
  { name: "Aman", marks: 72 },
  { name: "Sara", marks: 95 },
  { name: "Karan", marks: 55 },
  { name: "Sneha", marks: 30 }
]
# 1
passed_students = students.select{|s| s[:marks]>=40}.map{|s| s[:name]}.join(",")
puts passed_students

# 2
topper = students.max_by{|s| s[:marks]}
puts topper[:name]

#3
grades = students.group_by do |s|
  case s[:marks]
  when 0..39 then "F"
  when 40..59 then "C"
  when 60..79 then "B"
  else "A"
  end
end

puts "\n🎓 Grade Groups:"
grades.each do |grade, studs|
  names = studs.map { |s| s[:name] }.join(", ")
  puts "Grade #{grade}: #{names}"
end



# in descending order
puts students.sort_by{|s| -s[:marks]}.map{|s| s[:name]}.join(",")

# in ascending order

puts students.sort_by{|s| s[:marks]}.map{|s| s[:name]}.join(",")

# 5. Average marks
avg = students.sum { |s| s[:marks] }.to_f / students.size
puts "\n Average Marks: #{avg.round(2)}"