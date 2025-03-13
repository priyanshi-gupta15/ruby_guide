require 'open-uri'
require 'net/http'


# API URL (Example: Public Weather API)
url = URI("https://api.weatherapi.com/v1/current.json?key=YOUR_API_KEY&q=London")


# Making a GET request
# response = Net::HTTP.get(url)
response = URI.open(url).read


# 🔹 URI.open(url).read fetches API data as a string.
# 🔹 Alternative when Net::HTTP fails due to restrictions.

# parsing
data = JSON.parse(response)
puts data

# Displaying data
# puts "City: #{data['location']['name']}"
# puts "Temperature: #{data['current']['temp_c']}°C"
# puts "Condition: #{data['current']['condition']['text']}"