def display_board(board)
  cells = (0...9).map({|i| " #{board[i]} "})
  puts cells.each_slice(3).map {|x| x.join('|')}.join("\n-----------\n")
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

def input_to_index(input)
 input.strip.to_i - 1
end

def turn(board)
  loop do
    print "Please enter 1-9: "
    spot = input_to_index gets.chomp
    break if valid_move?(spot)
  end
end