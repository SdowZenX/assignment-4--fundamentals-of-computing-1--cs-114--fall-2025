void setup() {
size(500, 500);
initBoard();
computerMove();}

void draw() {background(255);
drawBoard();
drawPieces();
}
void keyPressed() {
if (gameOver) {
println("The game has ended.");
return;
}

if (key >= '0' && key <= '8') {
int square = key - '0';

if (board[square] == EMPTY) {
board[square] = USER;

if (checkWinner() != EMPTY) {
gameOver = true;
if (checkWinner() == USER) {
println("The user has won.");
} else {
println("The computer has won.");
}
return;
}

if (isBoardFull()) {
gameOver = true;
println("No one has won.");
return;
}
computerMove();

if (checkWinner() != EMPTY) {
gameOver = true;
if (checkWinner() == USER) {
println("The user has won.");
} else {
println("The computer has won.");
}
return;
}

if (isBoardFull()) {
gameOver = true;
println("No one has won.");
return;}

println("The game is still in play.");
} else {
println("That square is already taken.");}
} else {
println("You pressed an incorrect key.");
}
}
