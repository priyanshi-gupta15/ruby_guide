# Regular expressions (RegEx) are patterns used for string matching. In Ruby, they are used for validating input, extracting data, and replacing text. Rails heavily relies on regex for form validations, especially for email validation, phone numbers, usernames, and passwords.

# 1️⃣ Declaring a Regular Expression
# Regular expressions in Ruby are defined using /pattern/ or Regexp.new("pattern").


# Using slashes
regex1 = /hello/

# Using Regexp.new
regex2 = Regexp.new("hello")


# 2️⃣ Matching a Pattern
# =~ : Returns the index of the match or nil if no match is found.
# .match() : Returns a MatchData object or nil.
puts "hello world" =~ /world/   # Output: 6 (index where "world" starts)
puts "hello world" =~ /ruby/    # Output: nil (not found)

match_data = /world/.match("hello world")
puts match_data[0] if match_data  # Output: "world"



# 3️⃣ Common Metacharacters in RegEx
# Symbol	Meaning
# .	Any character except newline
# \d	Digit (0-9)
# \D	Non-digit
# \w	Word character (a-z, A-Z, 0-9, _)
# \W	Non-word character
# \s	Whitespace (space, tab, newline)
# \S	Non-whitespace
# \b	Word boundary
# ^	Start of string
# $	End of string


# 4️⃣ Validating User Input (Form Validation)
# Ruby on Rails often uses regular expressions for form validations. Below are common use cases:

# ✅ Email Validation

def valid_email?(email)
  regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  email.match?(regex)
end

puts valid_email?("test@example.com")  # true
puts valid_email?("invalid-email")     # false


# \A - Start of string
# [a-z\d\-.]+ - Valid characters before @
# @ - The @ symbol
# [a-z\d\-.]+ - Valid domain name
# \.[a-z]+ - Top-level domain (.com, .org, etc.)
# \z - End of string


# ✅ Phone Number Validation
def valid_phone?(phone)
  regex = /\A\d{3}-\d{3}-\d{4}\z/
  phone.match?(regex)
end

puts valid_phone?("123-456-7890")  # true
puts valid_phone?("1234567890")    # false


# ✅ Username Validation (Only Letters & Numbers, 3-15 Chars)

def valid_username?(username)
  regex = /\A[a-zA-Z0-9_]{3,15}\z/
  username.match?(regex)
end

puts valid_username?("user_123")   # true
puts valid_username?("us")         # false (Too short)
puts valid_username?("user!@#")    # false (Special characters not allowed)


# 🔹 Searching & Replacing Text
# 1️⃣ Extracting Specific Parts of Text

text = "My email is contact@example.com"
email = text.match(/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z]{2,}\b/i)
puts email[0]  # Output: contact@example.com
# 2️⃣ Replacing Text using gsub

text = "My phone number is 123-456-7890"
puts text.gsub(/\d{3}-\d{3}-\d{4}/, "[REDACTED]")  
# Output: "My phone number is [REDACTED]"

# 3️⃣ Finding All Matches

text = "The price is $20 and the discount is $5."
prices = text.scan(/\$\d+/)
puts prices  # Output: ["$20", "$5"]
