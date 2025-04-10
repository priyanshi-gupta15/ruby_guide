require 'json'

data = {name:"ravi","age":22}
# json_data = data.to_json
# puts json_data

parse = JSON.parse(data.to_json)
puts parse