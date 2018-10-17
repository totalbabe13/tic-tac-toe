class Game
  attr_accessor :board, :player_one, :player_two
  def initialize
    @player_one = []
    @player_two = []
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

#BEHAVIOR
module Play
end

#- - - - - - - - -
#runner 
tester_game = Game.new
tester_game.display_new_board
tester_game.board[0][0] = 'x'
tester_game.board[0][1] = 'x'
tester_game.board[0][2] = 'x'
tester_game.display_new_board

if tester_game.board[0].each {|place| place == 'x'}
puts 'Won!'
end