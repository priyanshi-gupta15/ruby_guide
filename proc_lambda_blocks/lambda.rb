say_hello = -> { puts "Hello from lambda!" }
say_hello.call



# ⚠️ PROC vs LAMBDA: Key Difference

# 🚨 Behavior with return:

def test_proc
  my_proc = Proc.new { return "⬅️ Exited from PROC!" }
  my_proc.call
  my_proc1 = Proc.new { return "⬅️ Exited from PROC1!" }
  my_proc1.call

  "❌ You won't see this"
end

def test_lambda
  my_lambda = -> { return "✅ Lambda returned!" }
  my_lambda.call
  "✅ This WILL be printed"
  # my_proc = Proc.new { return "⬅️ Exited from PROC!" }
  # my_proc.call  #this proc function is return its value to the method, not the lambda function
end

puts test_proc      # Output: "⬅️ Exited from PROC!"
puts test_lambda    # Output: "✅ This WILL be printed"

# A proc returns from the method it’s inside, stopping everything. A lambda only returns from itself, so the rest of the method continues.



# Behavior with arguments:

my_proc = Proc.new { |x, y| puts "Proc: #{x}, #{y}" }
my_proc.call(10)  # Missing 1 argument? No problem!

my_lambda = ->(x, y) { puts "Lambda: #{x}, #{y}" }
# my_lambda.call(10)  # ❌ Error: wrong number of arguments
# ✅ Proc is lenient, ❌ Lambda is strict.




# practice questions
# Lambda with arguments

multiply = ->(a,b) {a*b}
puts multiply.call(4,5)


# Lambda behaves strictly with arguments:
my_lambda = ->(name) { puts "Hi, #{name}!" }
# Try this with missing arguments:
# my_lambda.call    # ❌ Will raise an error
my_lambda.call("Priya")



#  Make a method that accepts a lambda and uses it

def welcome_message(name,callback)
  puts "welcome ,#{name}!"
  callback.call
end

after_gretting = -> {puts "glad to have you here"}

welcome_message("priyanshi",after_gretting)