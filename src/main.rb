require_relative 'transpiler'

module JScript
  def main()
    print "--- JScript v0.5 ---\n\nWelcome to JScript!\nEnter a line of JScript below.\n\n"
    temp = ""
    while true
      print "> "
      input = gets.chomp
      if input == "#halt"
        print temp
        break
      else
        temp += transpile(input) + "\n"
      end
    end
  end
end

JScript.main()
