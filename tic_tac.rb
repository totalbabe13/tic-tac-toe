
#BEHAVIOR
module Play
  def change_player
   if player_toggle == true
    player_toggle = false
   elsif player_toggle == false
     player_toggle = true 
   end
  end
end

#OBJECTS
class Game
  include Play
  attr_reader :player_toggle
  attr_accessor :board, :player_one, :player_two
  def initialize
    @player_toggle = true
    @board =[
     [1,2,3],
     [4,5,6],
     [7,8,9],
    ]
  end
  def display_new_board
    p ' - - + - - + - - '
    p "| #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]} |"
    p ' - - + - - + - - '
    p "| #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]} |"
    p ' - - + - - + - - '
    p "| #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]} |"
    p ' - - + - - + - - '
    puts ''
  end  
end 



#- - - - - - - - -
#runner 

puts 'WELCOME TO TIC TAC TOE!'
puts 'DO YOU WANT TO PLAY? (y/n)'

start_game = gets.chomp
if start_game == 'y'
 puts 'lets play!'
 puts ''
 puts ''
 tester_game = Game.new
 tester_game.display_new_board
 puts ''
 puts ''
 puts ' - - - - - - - - - - - - -'
 puts 'Make your move: PLAYER ONE' 
 puts 'chose a square number: (1-9)'

  move = gets.chomp
   case move
     when '1'
       tester_game.board[0][0] = 'x'
       tester_game.display_new_board
     when '2'
       tester_game.board[0][1] = 'x'
       tester_game.display_new_board
     when '3'
       tester_game.board[0][2] = 'x'
       tester_game.display_new_board
     when '4'
       tester_game.board[1][0] = 'x'
       tester_game.display_new_board
     when '5'
       tester_game.board[1][1] = 'x'
       tester_game.display_new_board
     when '6'
       tester_game.board[1][2] = 'x'
       tester_game.display_new_board 
     when '7'
       tester_game.board[2][0] = 'x'
       tester_game.display_new_board
     when '8'
       tester_game.board[2][1] = 'x'
       tester_game.display_new_board
     when '9'
       tester_game.board[2][2] = 'x'
       tester_game.display_new_board  

    end 

else
 puts 'okay, we\'ll play later!' 
end 



# 1 tester_game.board[0][0] = 'x'
# 2 tester_game.board[0][1] = 'x'
# 3 tester_game.board[0][2] = 'x'
# tester_game.whos_turn





