#  Write a Ruby program to read data from a file.

File.open("text.txt","r") do |file|
    puts file.read
end

# appending in the file
File.open("text.txt","a") do |file|
  file.puts"you have to do hard work now"
end

#delete the fie
File.delete("example.txt") if File.exist?("example.txt")



# Mode	Description
# "r"	Read-only mode (file must exist)
# "w"	Write mode (creates/truncates file)
# "a"	Append mode (creates if not exists)
# "r+"	Read & write (file must exist)
# "w+"	Read & write (truncates file)
# "a+"	Read & append (creates if not exists)