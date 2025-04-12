# Mini Project: Custom Student Report System
# We'll create a simple app that:

# Stores student data (name, age, marks)

# Filters students using Enumerable + Proc/Lambda

# Uses blocks to display customized messages

# 1
students = [
  { name: "Aarav", age: 18, marks: 82 },
  { name: "Priya", age: 21, marks: 91 },
  { name: "Dev", age: 20, marks: 74 },
  { name: "Sanya", age: 22, marks: 96 },
  { name: "Kabir", age: 19, marks: 65 },
  { name: "somya", age: 19, marks: 25 },
]

# 2
# Filter students based on marks using lamda
passed = -> (student){student[:marks]>=33}
adults =-> (student){student[:age]>=20}

# Add a lambda to classify grades (A/B/C)
grade = ->(marks) do 
  case marks
  when 75..100 then "A"
  when 65..75 then "B"
  when 40..65 then "C"
  when 33..40 then "D"
  else "F"
  end
end


# Filter and Display Using Procs
def filter_students(students, filter_proc)
  students.select(&filter_proc)
end

puts "\n🎓 Students Who Passed:"
filter_students(students, passed).each do |s|
  student_grade = grade.call(s[:marks])
  puts "#{s[:name]} => Marks: #{s[:marks]}, Grade: #{student_grade}"

end

puts "\n🧑‍🎓 Adult Students:"
filter_students(students, adults).each do |s|
  puts "#{s[:name]} (#{s[:age]} years old)"
end



# Display Summary with a Block
def student_summary(student)
  puts "📘 Summary:"
  yield(student) if block_given?
  puts "-" * 25
end

student_summary(students.first) do |s|
  puts "Name: #{s[:name]}"
  puts "Age: #{s[:age]}"
  puts "Marks: #{s[:marks]}"
end


# Add a block to print a congratulatory message if marks > 90

def congrate(student)
  yield if block_given?
end

students.each do |s|
  congrate(s) {puts "Congratulations #{s[:name]}! You scored above 90!" if s[:marks] > 90}
end


# Use group_by to group students by pass/fail

status = students.group_by  {|s| s[:marks]>=33 ?
"passed" : "failed"}
puts "\n grouped by pass/fail"
# status.each do |status, students|
#   puts "#{status}: #{students.map { |s| s[:name] }.join(", ")}"
# end

status.each do |status, group|
  puts "\n#{status} Students:"
  group.each do |s|
    puts "- #{s[:name]} (#{s[:marks]} marks)"
  end
end