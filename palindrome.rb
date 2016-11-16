require 'palindrome'
require 'colorize'
require 'colorized_string'

puts ColorizedString["Type q for quit"].colorize(:red)
def word
  puts ColorizedString["What is the word you want to check"].colorize(:blue)
  words = gets.chomp.downcase
  if words == "q"
    puts ColorizedString["Okay bye!"].colorize(:red)
    exit
  else
    check = words.palindrome?
    case check
      when true
        puts ColorizedString["Yes, #{words} is a palidrome?"].colorize(:green)
      else
        puts ColorizedString["Nope, #{words} not a palidrome"].colorize(:yellow)
      end
    word
  end
end
word
