require 'pry'
require 'colorize'

@answers =[
  "42.",
  "Absolutely!",
  "It is decidedly so",
  "Of Course!",
  "Yes definitely",
  "Count on it, daddio",
  "I mean, I think so",
  "Probably",
  "The cylons told me yes",
  "Yes",
  "Signs point to yes",
  "Clairvoyance out of order; try again.",
  "Magic 8 ball sleepy. ask me again later",
  "I have no clue, dude",
  "I cant see this answer until I catch up on Game of Thrones. Ask later",
  "Ask harder.",
  "Not a chance, fool",
  "No",
  "No means no",
  "It's not looking good for you, dude",
  "Probably not"
]

@ans_ed = @answers.clone

def ask
  sel = ""
  puts ""
  puts "Ask me a question, puny flesh bag, and you shall know your future!".colorize(:green)
  puts "Or, I guess type Exit if you're leaving".colorize(:green)
  puts ""
  sel = gets.strip

  case sel 
    when "exit"
      puts "Fine. Leave. I dont care... I miss you.".colorize(:yellow)
      exit
    when "add_answers"
      puts ''
      puts 'Wily human, you dare change my knowlege?'.colorize(:red)
      puts 'What is the new response you wish to force into my brain?'.colorize(:red)
      puts ''
      newans = gets.strip
        if @ans_ed.include? newans
          puts 'I appear to already know this.'
          ask
        else 
          @ans_ed << newans
        end
    when "reset_answers"
      @ans_ed = @answers.clone
      puts ''
      puts 'I went on a bender, and forgot everything you may have tried to teach me. My bad, man.'.colorize(:yellow)
      puts ''
      ask
    when "print_answers"
      puts ''
      puts 'Behold, all possible responses to your inane questioning!'.colorize(:green)
      puts ''
      @ans_ed.each do |answ|
        puts "#{answ}".colorize(:yellow)
      end
      puts ''
      ask
    else  
      puts ''
      puts 'You asked:'
      puts sel
      puts ''
      puts 'BEHOLD MY WISDOM, MORTAL!'.colorize(:red)
      puts ''
      puts @ans_ed.sample.colorize(:green)
    end
  ask
end

puts ""
puts "BEHOLD".colorize(:light_blue)
puts "My coming was foretold by Mattel.".colorize(:light_blue)
puts "I am the all knowing, all powerful, sometimes lazy Magic 8 ball!".colorize(:light_blue)
ask