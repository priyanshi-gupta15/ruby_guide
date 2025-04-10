# Make HTTP Requests (APIs)
# 🔸 Use it for: Calling APIs and parsing responses.

 require 'httparty'

 response =HTTParty.get('https://jsonplaceholder.typicode.com/posts/1')
 puts response.body

 puts response.parsed_response["title"]


 response1 =HTTParty.get('https://jsonplaceholder.typicode.com/posts')
#  puts response.body

  post=response1.parsed_response
  i=1
  post.each do |p|
    puts  "#{p["id"]}. #{p["title"]}"
  end



  # Filter posts where userId is 1
user1_posts = post.select { |p| p['userId'] == 1 }