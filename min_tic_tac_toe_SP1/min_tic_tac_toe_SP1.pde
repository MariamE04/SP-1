TicTacToe game = new TicTacToe();

void setup() {
  size(700, 700);
  strokeWeight(4);
  stroke(0);
}

void draw() {
  background(255);
  game.drawBoard(); // Tegner spillepladen
}

void mousePressed() {
  int row = (mouseY - 50) / 200; // Beregner hvilken række man klikker på
  int col = (mouseX - 50) / 200;  // Beregner hvilken kolonne der bliver klikket på
  if (row >= 0 && row < 3 && col >= 0 && col < 3) {  // Tjekker om klikket er inden for brættet
    game.play(row, col);   //Spiller på den valgte position
  }
}
