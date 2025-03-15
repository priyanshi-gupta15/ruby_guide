
require 'json'

# Read JSON data from a file
json_data = File.read("data.json")

# Parse JSON string into a Ruby hash
parsed_data = JSON.parse(json_data)

puts "Name: #{parsed_data["name"]}"
puts "Age: #{parsed_data['age']}"
puts "City: #{parsed_data['city']}"
# 🔹 File.read("data.json") reads the JSON file as a string.
# 🔹 JSON.parse(json_data) converts JSON into a Ruby hash.