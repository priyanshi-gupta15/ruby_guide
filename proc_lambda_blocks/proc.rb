say_hi = Proc.new { puts "Hi from proc!" }
say_hi.call


# practice questions

# 1. Save a Proc and call it later
say_hello = Proc.new { puts "Hello from Proc!" }
say_hello.call


# 2.Proc that accepts parameters:

add = Proc.new { |a, b| a + b }
puts add.call(5, 10)  # Output: 15


# 3. Passing a Proc into a method:
def perform(proc)
  puts "Before proc"
  proc.call
  puts "After proc"
end

my_proc = Proc.new { puts "Inside proc!" }

perform(my_proc)