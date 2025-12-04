void drawBoard() {
  stroke(0);
  strokeWeight(2);

  line(CELL_SIZE, 0, CELL_SIZE, height);
  line(CELL_SIZE * 2, 0, CELL_SIZE * 2, height);

  line(0, CELL_SIZE, width, CELL_SIZE);
  line(0, CELL_SIZE * 2, width, CELL_SIZE * 2);
}

void drawX(int row, int col) {
  float x = col * CELL_SIZE;
  float y = row * CELL_SIZE;
  float margin = CELL_SIZE * 0.2;

  stroke(0);
  strokeWeight(4);
  line(x + margin, y + margin, x + CELL_SIZE - margin, y + CELL_SIZE - margin);
  line(x + CELL_SIZE - margin, y + margin, x + margin, y + CELL_SIZE - margin);
}

void drawO(int row, int col) {
  float x = col * CELL_SIZE + CELL_SIZE / 2;
  float y = row * CELL_SIZE + CELL_SIZE / 2;
  float diameter = CELL_SIZE * 0.6;

  stroke(0);
  strokeWeight(4);
  noFill();
  circle(x, y, diameter);
}

void drawPieces() {
  for (int i = 0; i < 9; i++) {
    int row = i / 3;
    int col = i % 3;

    if (board[i] == COMPUTER) {
      drawX(row, col);
    } else if (board[i] == USER) {
      drawO(row, col);
    }
  }
}
