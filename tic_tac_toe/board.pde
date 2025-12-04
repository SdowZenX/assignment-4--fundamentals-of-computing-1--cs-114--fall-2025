int[] board = new int[9];
boolean gameOver = false;

void initBoard() {
  for (int i = 0; i < 9; i++) {
    board[i] = EMPTY;
  }
  gameOver = false;
}

int checkWinner() {
  for (int i = 0; i < 3; i++) {
  if (board[i * 3] != EMPTY &&
  board[i * 3] == board[i * 3 + 1] &&
  board[i * 3] == board[i * 3 + 2]) {
  return board[i * 3];
  }
  }

  for (int i = 0; i < 3; i++) {
   if (board[i] != EMPTY &&
  board[i] == board[i + 3] &&
  board[i] == board[i + 6]) {
   return board[i];
  }
  }

if (board[0] != EMPTY && board[0] == board[4] && board[0] == board[8]) {
  return board[0];
  }
  if (board[2] != EMPTY && board[2] == board[4] && board[2] == board[6]) {
  return board[2];
  }

  return EMPTY;
}

boolean isBoardFull() {
  for (int i = 0; i < 9; i++) {
  if (board[i] == EMPTY) {
  return false;
  }
  }
  return true;
}

void computerMove() {
  for (int i = 0; i < 9; i++) {
  if (board[i] == EMPTY) {
  board[i] = COMPUTER;
  if (checkWinner() == COMPUTER) {
    return;}
  board[i] = EMPTY;
  }
  }

  for (int i = 0; i < 9; i++) {
    if (board[i] == EMPTY) {
    board[i] = USER;
  if (checkWinner() == USER) {
  board[i] = COMPUTER;
  return;}
  board[i] = EMPTY;}
  }

  if (board[4] == EMPTY) {
  board[4] = COMPUTER;
  return;
  }

  int[] corners = {0, 2, 6, 8};
  for (int corner : corners) {
  if (board[corner] == EMPTY) {
  board[corner] = COMPUTER;
  return;
    }
  }

  for (int i = 0; i < 9; i++) {
  if (board[i] == EMPTY) {
  board[i] = COMPUTER;
  return;
  }
  }
}
