# How to Pass a Block to a Method in Ruby?
# In Ruby, you can pass a block to a method using "yield" or by explicitly converting it to a Proc using "&block".

 # Using yield
 #  If a method is given a block, yield executes it inside the method.

# A method can accept a block (anonymous function) using yield:

def repeat_twice
  yield
  yield   #yield calls the block passed during method execution.
end

repeat_twice { puts "Hello!" }



def double
  yield 4
end

double { |num| puts num * 2 }  # Output: 4



def greet
  puts "Before block execution"
  yield if block_given? # Executes the block  
        #checks the error
  puts "After block execution"
end

greet #{ puts "Hello from block!" }


# Using &block Parameter
# If you want to pass a block explicitly as a parameter, use &block. This converts the block into a Proc.

def greeting(&block)
  puts "Before calling block"
  block.call if block  # Calls the block
  puts "After calling block"
end

greeting { puts "Hello from block!" }


# Passing Arguments to a Block
# You can pass values to a block using yield or block.call.

def square(num)
  yield(num) if block_given?
end

square(5) { |n| puts "Square: #{n ** 2}" }
