def display_board(board) 
  i = -1
  cells = (0...9).map({|i| " #{board[i]} "})
  puts (0...9).map {|i|}.join ''
end

def valid_move?(board, index)
  board[index].between(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index].nil?
    false
  else
    board[index].count('XO') > 0
  end
end

def move(board, index, token)
  board[index] = token
end
