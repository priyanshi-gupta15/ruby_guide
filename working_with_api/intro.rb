# APIs (Application Programming Interfaces) allow your Ruby programs to communicate with external services like weather data, social media platforms, payment gateways, and more.

# 1️⃣ Basics of APIs in Ruby
# An API is an interface that allows you to send requests and receive responses from a server. APIs typically use HTTP methods like:

# GET – Retrieve data
# POST – Send new data
# PUT/PATCH – Update existing data
# DELETE – Remove data

# 🔹 Making an HTTP Request in Ruby
# To interact with APIs, we use libraries like: ✔ Net::HTTP (built-in Ruby library)
# ✔ HTTParty (third-party gem)
# ✔ Faraday (another popular gem for API calls)

# 2️⃣ Using Net::HTTP (Built-in Library)
# Ruby provides the Net::HTTP module for making API requests without any extra gems.

# 🔹 Making a Simple GET Request

require 'net/http'
require 'json'

url = URI("https://jsonplaceholder.typicode.com/posts/1")  # Fake API
response = Net::HTTP.get(url)

# Convert JSON response into a Ruby hash
data = JSON.parse(response)
puts data
# ✔ Net::HTTP.get(url) sends a GET request
# ✔ JSON.parse(response) converts the response into a Ruby Hash


# 3️⃣ Using HTTParty (Easier HTTP Requests)
# To simplify API requests, install HTTParty:

# gem install httparty
# 🔹 GET Request with HTTParty

require 'httparty'

response = HTTParty.get("https://jsonplaceholder.typicode.com/posts/1")
puts response.parsed_response  # Converts JSON to Ruby Hash
# ✔ Cleaner and shorter syntax
# ✔ Automatically parses JSON

# 🔹 Sending Data with POST (HTTParty)

response = HTTParty.post(
  "https://jsonplaceholder.typicode.com/posts",
  body: { title: "New Post", body: "This is a test post", userId: 1 }.to_json,
  headers: { "Content-Type" => "application/json" }
)

puts response.parsed_response
# ✔ POST sends new data
# ✔ headers specify that we are sending JSON



