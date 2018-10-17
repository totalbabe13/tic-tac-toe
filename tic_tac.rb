
#BEHAVIOR
module Play
  def check_if_won
    whole_board = board.flatten
    row_one = board[0]
    row_two = board[1]
    row_three = board[2]
    column_one   = [ board[0][0],board[1][0],board[2][0] ]
    column_two   = [ board[0][1],board[1][1],board[2][1] ]
    column_three = [ board[0][2],board[1][2],board[2][2] ]
    diagonal_one = [ board[0][0],board[1][1], board[2][2] ]
    diagonal_two = [ board[0][2],board[1][1], board[2][0] ]
    winners = [row_one, row_two, row_three, column_one, column_two, column_three,diagonal_one, diagonal_two]

    winners.each do |item|
      if item.eql? ['x','x','x'] 
       self.won = true
      end
      if item.eql? ['o','o','o'] 
       self.won = true
      end 
    end

    if !whole_board.any? {|box| box.is_a? Integer}
       self.won = true
       self.draw = true
    end
  end 

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
    if player_toggle == 'two'
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
   elsif player_toggle == 'one'
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

#OBJECTS - - - - - - - - - - - - -
class Game
  include Play
  attr_accessor :board, :player_toggle, :won, :draw
  def initialize
    @draw = false
    @won = false
    @player_toggle = 'two'
    @board =[
     [1,2,3],
     [4,5,6],
     [7,8,9],
    ]
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

   while (tester_game.won != true)
    puts 'Make your move: PLAYER ONE' 
    puts 'chose a square number: (1-9)'
    move = gets.chomp
    tester_game.mark_square(move)
    tester_game.display_new_board
    tester_game.change_player
    tester_game.check_if_won
    break if tester_game.won == true

    puts ''
    puts ''
    puts ' - - - - - - - - - - - - -'
    puts 'Make your move: PLAYER TWO' 
    puts 'chose a square number: (1-9)' 
    move = gets.chomp
    tester_game.mark_square(move)
    tester_game.display_new_board
    tester_game.change_player 
    tester_game.check_if_won 
    break if tester_game.won == true
  end  
  if tester_game.draw == true
    puts "Looks like its a DRAW!"
  else  
    puts "Looks like PLAYER #{tester_game.player_toggle} Won!"
  end
else
 puts 'okay, we\'ll play later!' 
end 









