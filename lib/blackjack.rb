def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11) 
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  round_one = deal_card + deal_card
    display_card_total(round_one)
    return round_one 
end

def hit? (card_total)
=begin  prompt_user
  input = get_user_input
    if input == "s"
      card_total 
    elsif input == "h"
      card_total += deal_card
    else 
      invalid_command
      prompt_user
      input = get_user_input
    end
=end 
  
  prompt_user
  user_input = get_user_input
  until user_input == 'h' || user_input == 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == 'h'
    card_total += deal_card
  elsif user_input == 's'
    card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    card_total = initial_round
    
    until card_total > 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    end
  end_game(card_total) 
  
end
  
  
  
  # Once you get all of the tests in the first part of the test suite passing, you have built the building blocks of our blackjack game. Now, we need to put them all together in the #runner method. The #runner method is responsible for enacting the game play until the user loses. Remember that a player loses if the sum of their cards exceeds 21.

  # Here's how we want our game to run:

  # Welcome the user
  # Deal them their first two cards, i.e. their initial_round
  # Ask them if they want to hit or stay
  # If they want to hit, deal another card
  # If they want to stay, ask them again!
  # If their card total exceeds 21, the game ends.
  # Use a loop constructor (I'd recommend until, but that is by no means your only option) to enact the above game play in the #runner method. Then, check out the lib/runner.rb file. Notice that it is simply calling the #runner method. The runner file will call the #runner method which should in turn utilize all the other methods you built!
  
    
