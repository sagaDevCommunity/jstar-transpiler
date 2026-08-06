require_relative transpiler

module JScript
  def main()
    print "--- JScript v0.2 ---\n\nWelcome to JScript!\nEnter a line of JScript below."
    while true
      puts "> "
      transpile(gets.chomp)
    end
  end
end
