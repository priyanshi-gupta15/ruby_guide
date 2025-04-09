require 'faker'
5.times do
  puts Faker::Name.name
end


# You create your own list of Indian names and randomly pick one.


indian_names = [
  "Aarav Sharma", "Vivaan Patel", "Aanya Singh", "Diya Mehta",
  "Raj Verma", "Priya Joshi", "Ishaan Gupta", "Kavya Nair"
]

puts "Random Indian name: #{indian_names.sample}"



Faker::Config.locale = 'en-IND'

puts Faker::Name.name

#  Use ffaker Gem (Alternative Faker gem with better support)
# ffaker is faster and sometimes has more culturally diverse data.

require 'ffaker'

puts FFaker::NameIN.name