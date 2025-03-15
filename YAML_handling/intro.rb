# YAML (Yet Another Markup Language) is a human-friendly format often used for configuration files.

# name: John Doe
# age: 25
# skills:
#   - Ruby
#   - Python
#   - JavaScript
# active: true


# 🔹 Convert Ruby Objects to YAML

require 'yaml'

data = {
  name: "Alice",
  age: 30,
  skills: ["Ruby", "Java", "C++"],
  active: true
}

yaml_string = data.to_yaml  # Convert Ruby Hash to YAML string
puts yaml_string
# ✔ to_yaml: Converts a Ruby Hash into a YAML string.

# 🔹 Parsing YAML to Ruby

yaml_string = <<~YAML
  name: Alice
  age: 30
  skills:
    - Ruby
    - Java
    - C++
  active: true
YAML

ruby_hash = YAML.load(yaml_string)  # Convert YAML to Ruby Hash
puts ruby_hash["name"]  # Output: Alice
# ✔ YAML.load(yaml_string): Parses YAML into a Ruby Hash.



#  Writing YAML to a File


data = {
  product: "Laptop",
  price: 1299,
  available: true
}

File.open("product.yaml", "w") do |file|
  file.write(data.to_yaml)  # Write YAML to a file
end
puts "YAML file created successfully!"
# ✔ Saves YAML-formatted data into a file.


# 🔹 Reading YAML from a File


file = File.read("product.yaml")  # Read YAML file
data = YAML.load(file)         # Convert YAML to Ruby Hash
puts data
# ✔ Reads and parses YAML from a file.