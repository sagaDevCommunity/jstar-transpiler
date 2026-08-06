require_relative 'transpiler'

module JScript
  def main()
    print "--- JScript v0.4 ---\n\nWelcome to JScript!\nEnter a line of JScript below.\n\n"
    while true
      print "> "
      puts transpile(gets.chomp)
    end
  end
end

JScript.main()
