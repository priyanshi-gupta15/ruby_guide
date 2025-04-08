# When calling APIs, you must handle: ✔ Time-out errors
# ✔ Invalid responses
# ✔ Server errors (500, 404, etc.)


require 'net/http'
require 'json'

def fetch_data(url)
  uri = URI(url)
  response = Net::HTTP.get_response(uri)

  case response.code.to_i
  when 200
    JSON.parse(response.body)  # Successful response
  when 404
    puts "Error: Resource not found!"
  when 500..599
    puts "Server error! Try again later."
  else
    puts "Unknown error: #{response.code}"
  end
end

data = fetch_data("https://jsonplaceholder.typicode.com/posts/1000")
puts data
# ✔ Uses response.code.to_i to check status codes
# ✔ Handles 404 (Not Found) and 500 (Server Errors)