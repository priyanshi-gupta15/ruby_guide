# 1. Opening a File in Ruby
file = File.open("example.txt", "w")  # Opens a file in write mode



      # Here, "w" means write mode. Other modes include:
      
      # Mode	Description
      # "r"	Read-only (default)
      # "w"	Write (erases content if the file exists)
      # "a"	Append (adds to the existing content)
      # "r+"	Read & write
      # "w+"	Read & write (erases existing content)
      # "a+"	Read & append


# 2. Writing to a File
# We can use .write or .puts to write content to a file.



File.open("example.txt", "w") do |file|
  file.puts "Hello, world!"
  file.puts "Welcome to Ruby file handling."
 
end

# ✅ What happens here?

# "w" mode creates the file (if it doesn’t exist) and writes to it.
# .puts adds new lines automatically.
# The block automatically closes the file when done.    


# ✅ Reading Line by Line

File.open("example.txt", "r") do |file|
  file.each_line do |line|
    puts "Line: #{line}"
  end
end


# ✅ Appending to a File
# To add new content without erasing the existing data, use "a" (append mode).

File.open("example.txt", "a") do |file|
  file.puts "Appending new content!"
end


# 📌Checking if a File Exists

if File.exist?("example.txt")
  puts "The file exists!"
else
  puts "File not found!"
end


# 📌 Deleting a File

File.delete("example.txt") if File.exist?("example.txt")