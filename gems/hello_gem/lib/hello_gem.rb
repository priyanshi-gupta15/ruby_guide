# frozen_string_literal: true

require_relative "hello_gem/version"

module HelloGem

  # Your code goes here...
  def self.greet(name="freind")
    "hello ,#{name.capitalize}"
  end
end
