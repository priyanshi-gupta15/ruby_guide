# 1️⃣ What is JSON?
# JSON (JavaScript Object Notation) is a lightweight data format used to store and exchange structured data. It is widely used in APIs, databases, and config files.


#  JSON Structure Example

{
  "name": "John Doe",
  "age": 25,
  "skills": ["Ruby", "Python", "JavaScript"],
  "active": true
}


# 🔹 Converting Ruby Objects to JSON (Serialization)

require 'json'

data = {
  name: "Alice",
  age: 30,
  skills: ["Ruby", "Java", "C++"],
  active: true
}

json_string = JSON.generate(data)  # Convert Ruby Hash to JSON string
puts json_string


# 🔹 Parsing JSON to Ruby Objects (Deserialization)


json_string = '{"name": "Alice", "age": 30, "skills": ["Ruby", "Java", "C++"], "active": true}'
ruby_hash = JSON.parse(json_string)  # Convert JSON string to Ruby Hash
puts ruby_hash["name"]  # Output: Alice