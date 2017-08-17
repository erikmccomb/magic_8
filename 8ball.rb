require 'pry'
require 'colorize'

def ask
  sel = ""
  puts ""
  puts "Ask me a question, puny flesh bag, and you shall know your future!"
  puts "Or, I guess type Exit if you're leaving"
  puts ""
  sel = gets.strip

  case sel 
    when "exit"
      puts "Fine. Leave. I dont care... I miss you."
      exit
    when "add_answers"
      puts ''
      puts 'Wily human, you dare change my knowlege?'
      puts 'What is the new response you wish to force into my brain?'
      puts ''
      new_ans = gets.strip

    when "reset_answers"
      
    when "print_answers"
      
    else  
      answers =[
        "42",
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
        "I cant see the future until I catch up on Game of Thrones. Ask later",
        "See, tou say you wanna know, but I dont think you wanna know. Ask harder.",
        "Not a chance, fool",
        "No",
        "No means no",
        "It's not looking good for you, dude",
        "Probably not"
      ]
      puts ''
      puts 'You asked:'
      puts sel
      puts ''
      puts 'BEHOLD MY WISDOM, MORTAL!'
      puts answers.sample
    end
  ask
end

puts ""
puts "BEHOLD"
puts "My coming was foretold by Mattel."
puts "I am the all knowing, all powerful, sometimes lazy Magic 8 ball!"
ask