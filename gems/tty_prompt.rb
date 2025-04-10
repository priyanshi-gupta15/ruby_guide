require 'tty-prompt'

prompt = TTY::Prompt.new
choice = prompt.select("Choose your language:", %w(Ruby Python JavaScript))
puts "You picked #{choice}"