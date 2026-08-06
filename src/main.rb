require_relative transpiler

module JScript
  extend self
  def main()
    print "--- JScript v0.3 ---\n\nWelcome to JScript!\nEnter a line of JScript below."
    while true
      puts "> "
      transpile(gets.chomp)
    end
  end
end
