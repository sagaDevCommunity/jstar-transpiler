require_relative 'transpiler'

puts "--- JScript v0.5 ---"
puts "Welcome to JScript!"
puts "Enter a line of JScript below"

help_data = "Help data placeholder"

temp = ""

loop do
  print "> "
  input = gets.chomp
  break if input == "#halt"
  if input == "help"
    puts help_data
    redo # so it doesn't try to parse "help"
  end

  begin
    result = transpile(input)
  rescue => error
    puts "Sorry! Failed to parse this file. Error: #{error}"
  end
  temp += result + "\n" # honestly what does this even do
end