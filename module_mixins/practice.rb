# 1️⃣ Create a module Logging with a method log_message and mix it into a Logger class.

module Logging
  def log_message(message)
    puts "[LOG] #{Time.now}: #{message}"
  end
end

class Logger
  include Logging

  def initialize(name)
    @name = name
  end

  def log_activity
    log_message("user #{@name} is logged now")
  end
end

logger = Logger.new("priyanshi")
logger.log_activity
