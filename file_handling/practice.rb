# Read a file line by line and print only lines containing the word "Ruby".

begin
  File.foreach("test.txt") do |line|
    puts line if line.match?(/\bRuby\b/)  # Exact match for "Ruby"
  end
rescue Errno::ENOENT
  puts "Error: File not found!"
end



# real_world project
#  "Secure File Logger with Error Handling"


# build a Secure File Logger that:
# ✔ Reads from a log file.
# ✔ Writes user activities to a log file.
# ✔ Handles missing file errors (Errno::ENOENT).
# ✔ Prevents permission errors (Errno::EACCES).
# ✔ Ensures proper resource cleanup using ensure.
# ✔ Logs errors instead of just printing them.

# 📌 Project Requirements
# 1️⃣ Read a log file (if it exists).
# 2️⃣ Write new logs into the file.
# 3️⃣ Append logs instead of overwriting.
# 4️⃣ Handle missing file errors (Errno::ENOENT).
# 5️⃣ Handle permission errors (Errno::EACCES).
# 6️⃣ Ensure logs are saved even if an error occurs.
# 7️⃣ Log errors to a separate errors.log file for debugging.

require 'logger'

class SecureFileLogger
  LOG_FILE = "activity.log"
  ERROR_LOG_FILE = "errors.log"


   def initialize
    @logger = Logger.new(ERROR_LOG_FILE)  # Create an error log file
  end

  def read_logs
    begin
      File.open(LOG_FILE, "r") do |file|
        puts "📜 Log Contents:"
        puts file.read
      end
    rescue Errno::ENOENT
       puts "⚠️ Warning: Log file not found! Creating a new one..."
        File.open(LOG_FILE, "w") { |file| file.puts "Log file created on #{Time.now}" }
    rescue Errno::EACCES
      puts "🚫 Error: Permission denied while reading the file."
      @logger.error("Permission denied for reading #{LOG_FILE}.")
    ensure
      puts "✅ Read operation completed."
    end
  end
   # Method to write logs safely
  def write_log(activity)
    begin
      File.open(LOG_FILE, "a") do |file|  # Append mode
        file.puts("#{Time.now} - #{activity}")
        puts "✅ Activity logged successfully!"
      end
    rescue Errno::EACCES
      puts "🚫 Error: Permission denied while writing to the file."
      @logger.error("Permission denied for writing to #{LOG_FILE}.")
    rescue SystemCallError => e  # Catches disk space or other system errors
      puts "❗ System Error: #{e.message}"
      @logger.error("System error while writing to #{LOG_FILE}: #{e.message}")
    ensure
      puts "✅ Write operation completed."
    end
  end
end

# ------------------
# 🎯 Example Usage
# ------------------
logger = SecureFileLogger.new
logger.read_logs    # Read existing logs (or create the file if missing)
logger.write_log("User logged in")    # Append a new log entry
logger.write_log("User performed an action")   # Another log
logger.read_logs    # Read the updated log file
