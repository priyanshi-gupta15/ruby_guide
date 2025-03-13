#  Appending Data to an Existing JSON File

require 'json'

# Read existing JSON data
file = "data.json"
json_data = File.exist?(file) ? JSON.parse(File.read(file)) : {}

# Add new key-value pair
json_data["profession"] = "Software Engineer"
json_data["hobby"] = "teaching"

# Write updated JSON back to file
File.open(file, "w") do |f|
  f.write(JSON.pretty_generate(json_data))
end

puts "Data updated successfully!"