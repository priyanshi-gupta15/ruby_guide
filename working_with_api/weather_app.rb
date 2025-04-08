require 'net/http'
require 'json'

def fetch_weather(city)
  api_key = "9a796488ec58f751f766895e562cf4d7"
  url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_key}&units=metric"

  begin
    uri = URI(url)
    response = Net::HTTP.get_response(uri)

    case response.code.to_i
    when 200
      data = JSON.parse(response.body)
      return data
    when 401
      raise "Invalid API Key! Please check your credentials."
    when 404
      raise "City not found. Please enter a valid city name."
    else
      raise "Unexpected error: #{response.message} (#{response.code})"
    end

  rescue SocketError
    puts "Network error! Please check your internet connection."
    return nil
  rescue JSON::ParserError
    puts "Error parsing response. API might be down."
    return nil
  rescue StandardError => e
    puts "An error occurred: #{e.message}"
    return nil
  end
end

def save_weather_to_file(city, data)
  file_path = "weather_history.json"

  history = []
  if File.exist?(file_path)
    file_content = File.read(file_path)
    history = JSON.parse(file_content) rescue []
  end
  # appending

  history << { city: city, temperature: data['main']['temp'], time: Time.now.to_s }

  File.open(file_path, "w") do |file|
    file.write(JSON.pretty_generate(history))
  end

  puts "✅ Weather data saved to weather_history.json"
end

# Example Usage
puts "Enter city name: "
city = gets.chomp
weather_data = fetch_weather(city)

if weather_data
  puts "Weather in #{weather_data['name']}: #{weather_data['main']['temp']}°C"
  # Save data after fetching weather
save_weather_to_file(city, weather_data)
end






