require "pry"

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(number)
  # code hit? here
  prompt_user()
  input = get_user_input()
  card = number
  if input.chr == "h"
    card+=deal_card()
    return card
  elsif input.chr == "s"
    return card
  else
    invalid_command()
    # prompt_user()
    # input = get_user_input()
    hit?(number)
  end
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  card = initial_round()
  until card > 21 do
    card = hit?(card)
    display_card_total(card)
  end
  end_game(card)
end

# runner()
