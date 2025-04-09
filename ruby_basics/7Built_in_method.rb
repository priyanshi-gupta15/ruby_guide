# Useful Ruby Methods You Should Know
# Ruby has many built-in methods that make coding easier. Here’s a list of commonly used methods categorized for Strings, Arrays, Hashes, Numbers, and More!
# 
#string methods

str = "Hello world"
 puts str.upcase  #Converts to uppercase

 puts str.reverse

 puts str.downcase

 puts str.length

 puts str.swapcase #Converts to uppercase

 puts str.strip #Removes leading/trailing spaces

 puts str.split(" ") #Splits string into an array

 puts str.gsub("Hello","hi frind")  #Replaces all occurrences

 puts str.concat("...") #Appends another string

 puts str.include?("world") #Checks if substring exists


 #Array Methods
 arr = [1, 2, 3, 4, 5]

 puts  "ans #{arr.push(6)}" #Adds element to end
 puts " #{arr << 7}"   #same as push
 puts arr.pop   #remove the lats elment
 puts arr.shift   # remove first element
 puts  "#{arr.unshift(0)}"  #adds element in the start  
 
 
 puts arr.join #convert arr to string

 arr1 = [1,1,4,2,5,3,3,4]
 puts arr1.sort # sort the arr
 puts arr1.uniq.join(",") # remove duplicate
 puts arr1.include?(3)
 puts arr1.index(5)


 ## hash methods
 hash = { name: "priyanhsi", age: 125, city: "MP" }

 puts hash.keys
 puts hash.values
 puts hash.has_key?(:age)
 puts hash.fetch(:name)
 puts hash.merge({country: "india"})
 puts hash.delete(:age)



 arr1 = [1,2,3,4,5,6]
 puts  arr1.partition { |n| n.even? }.inspect

 


