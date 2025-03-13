begin
  File.open("sample.txt","r")
  file_content = File.read("sample.txt")
  word_count = file_content.split.size
   puts "Total words in file: #{word_count}"
rescue Errno::ENOENT
  puts "File not found! Please check the filename."
end
