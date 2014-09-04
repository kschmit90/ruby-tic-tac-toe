require 'pry'

require_relative "./Player.rb"
require_relative "./Board.rb"


binding.pry

board = Board.new


puts "Welcome to tic tac toe."
puts ""
puts "Numbers on the key are relative to the game board."
puts ""

puts "Player 1 is X"
puts "Player 1 enter your name."
name = gets.chomp.capitalize!
p1 = Player.new(name, "X")

puts "Player 2 is O"
puts "Player 2 enter your name."
name = gets.chomp.capitalize!
p2 = Player.new(name, "O")

loop do 
unless board.winning_game? || board.tie_game?
  puts ""
  board.board_key
  puts ""
  puts ""
  board.print_current_board
  
  puts "#{p1.name}'s (#{p1.marker}) Turn"
  p1.pick_spot
  p1.valid_input?
    while p1.valid_input? == false do
      puts "Invalid Input"
      p1.pick_spot
      true
    end
  
    while board.update_board(p1.spot, p1.marker) == false do
      puts "That spot is taken"
      p1.pick_spot
      true
    end
    
    if board.winning_game?
      puts ""
      puts "#{p1.name} (#{p1.marker}) Wins!"
      puts ""
      board.print_current_board
      break
    end
    if board.tie_game?
      puts ""
      puts "Cat's Game!"
      puts ""
      board.print_current_board
      break
    end
  
  puts ""
  board.board_key
  puts ""
  puts ""
  board.print_current_board
  
  puts "#{p2.name}'s (#{p2.marker}) Turn"
  p2.pick_spot
  p2.valid_input?
  
    while p2.valid_input? == false do
      puts "Invalid Input"
      p2.pick_spot
      true
    end
  
    while board.update_board(p2.spot, p2.marker) == false do
      puts "That spot is taken"
      p2.pick_spot
      true
    end
      
    if board.winning_game?
      puts ""
      puts "#{p2.name} (#{p2.marker}) Wins!"
      puts ""
      board.print_current_board
      break
    end
    if board.tie_game?
      puts ""
      puts "Cat's Game!"
      puts ""
      board.print_current_board
      break
    end
  end
end
  



