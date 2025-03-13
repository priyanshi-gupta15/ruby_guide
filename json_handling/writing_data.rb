# JSON (JavaScript Object Notation) is a popular format for storing and exchanging data. Ruby provides the JSON module for parsing and generating JSON.

require 'json'

# Sample data (Ruby hash)
data = {
  name: "Alice",
  age: 25,
  city: "New York"
}

# Convert Ruby hash to JSON and write to a file
File.open("data.json", "w") do |f|
  f.write(JSON.pretty_generate(data))  # `pretty_generate` makes JSON readable
end

puts "Data written to data.json successfully!"

# 🔹 JSON.pretty_generate(data) converts Ruby hash into formatted JSON.
# 🔹 File.open("data.json", "w") opens the file in write mode ("w").