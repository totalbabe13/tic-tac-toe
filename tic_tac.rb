
#BEHAVIOR
module Play

  def change_player
    if self.player_toggle == 'one'
      self.player_toggle = 'two'
    elsif self.player_toggle == 'two'
      self.player_toggle = 'one' 
    end   
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

  def mark_square(move)
    if player_toggle == 'one'
      case move
        when '1'
          board[0][0] = 'x'    
        when '2'
          board[0][1] = 'x'
        when '3'
          board[0][2] = 'x'
        when '4'
          board[1][0] = 'x'
        when '5'
          board[1][1] = 'x'
        when '6'
          board[1][2] = 'x' 
        when '7'
          board[2][0] = 'x'
        when '8'
          board[2][1] = 'x'
        when '9'
          board[2][2] = 'x'  
      end #case PLAYER one
      
   elsif player_toggle == 'two'
    case move
      when '1'
       board[0][0] = 'o'
      when '2'
       board[0][1] = 'o'
      when '3'
       board[0][2] = 'o'
      when '4'
       board[1][0] = 'o'
      when '5'
       board[1][1] = 'o'
      when '6'
       board[1][2] = 'o' 
      when '7'
       board[2][0] = 'o'
      when '8'
       board[2][1] = 'o'
      when '9'
       board[2][2] = 'o'  
      end #case player two
    end
  end#end of mark_square

end

#OBJECTS
class Game
  include Play
   
  attr_accessor :board, :player_one, :player_two, :player_toggle
  def initialize
    @player_toggle = 'one'
    @board =[
     [1,2,3],
     [4,5,6],
     [7,8,9],
    ]
  end
  # def display_new_board
  #   p ' - - + - - + - - '
  #   p "| #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]} |"
  #   p ' - - + - - + - - '
  #   p "| #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]} |"
  #   p ' - - + - - + - - '
  #   p "| #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]} |"
  #   p ' - - + - - + - - '
  #   puts ''
  # end  
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
  tester_game.mark_square(move)
  tester_game.display_new_board
  tester_game.change_player
  tester_game.player_toggle

puts 'Make your move: PLAYER TWO' 
puts 'chose a square number: (1-9)' 
  move = gets.chomp
  tester_game.mark_square(move)
  tester_game.display_new_board
  tester_game.change_player  

else
 puts 'okay, we\'ll play later!' 
end 









