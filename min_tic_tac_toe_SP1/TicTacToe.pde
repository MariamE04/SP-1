class TicTacToe {
  int[][] board = new int[3][3]; // Jeg opretter et 3x3 spillebræt
  boolean playerTurn = true;  // Jeg holder styr på hvis tur det er (true for spiller 1, false for spiller 2)


  void play(int row, int col) {
    if (board[row][col] == 0) { // Tjekker om feltet er tomt
      board [row] [col] = playerTurn ? 1:2; // Sæt kryds eller bolle afhængigt af hvem der har turen
      playerTurn = !playerTurn; // Skift turen (true bliver false, og omvendt)
    }
  }

  void drawBoard() {
    drawGrid();  //Tegner spillepladen
    drawPieces();  //Tegner X og O på spillepladen
  }

  void drawGrid() {
    rect(50, 50, 600, 600);   // Tegner den ydre firkant (spillebrættet)
    line(250, 50, 250, 650);  // Vertikal linje 1
    line(450, 50, 450, 650);  // Vertikal linje 2
    line(50, 250, 650, 250);  // Horisontal linje 1
    line(50, 450, 650, 450);  // Horisontal linje 2
  }

  void drawPieces() {
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        if (board[row][col] == 1) {
          drawX(150 + col * 200, 150 + row * 200);  // Tegner X på den rigtige plads
        } else if (board[row][col] == 2) {
          drawO(150 + col * 200, 150 + row * 200);  // Tegner O på den rigtige plads
        }
      }
    }
  }

  void drawX(float x, float y) {
    line(x - 50, y - 50, x + 50, y + 50); // Diagonal linje 1 for X
    line(x + 50, y - 50, x - 50, y + 50);  // Diagonal linje 2 for X
  }

  void drawO(float x, float y) {
    noFill();  
    ellipse(x, y, 100, 100); // Tegner O som en cirkel
  }
}
