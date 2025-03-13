# Lambda and Proc in Ruby: A Detailed Guide
# In Ruby, Proc and Lambda are objects that allow us to store blocks of code and execute them later. They are similar but have key differences.


#==>>> What is a Proc?
# A Proc (short for procedure) is an object that stores a block of code and can be executed multiple times.

# 🔹 Creating a Proc
#    my_proc = Proc.new { puts "Hello from Proc!" }
#    my_proc.call  # Output: Hello from Proc!

# 2️⃣ What is a Lambda?
# A Lambda is similar to a Proc but with stricter behavior.

# 🔹 Creating a Lambda
# my_lambda = lambda { puts "Hello from Lambda!" }
# my_lambda.call  # Output: Hello from Lambda!

# ✔️ You can also use -> (arrow syntax)

# my_lambda = -> { puts "Hello from Lambda!" }
# my_lambda.call



# Proc ignores method scope and returns from the enclosing method.
# Lambda returns normally, just like a method.