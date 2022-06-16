public class Board{
  // 0 is an empty space
  // 1 represents an "X"
  // 2 represents an "O"
 int[][] board = new int[3][3];
 
 public Board(){
   println("A new board has been created"); 
   board[0][0] = 1;
 }

 /**
 * Draws the standard Tic-Tac-Toe board. 
 */
 public void drawBoard(){
   background(255, 255, 255);
   fill(0, 0, 0);
   strokeWeight(1);
   // Vertical lines
   rect(width * 0.33, 0, 10, height);
   rect(width * 0.67, 0, 10, height);
   
   // Horizontal lines
   rect(0, height * 0.33, width, 10);
   rect(0, height * 0.67, width, 10);
  
   // Draw Xs and Os that have been played
   for(int i = 0; i < board.length; i++){
     for(int j = 0; j < board.length; j++){
       if(board[i][j] == 1){
         drawX(i, j);
       }else if(board[i][j] == 2){
         drawO(i, j);
       }
     }
   }
 }
 
  /**
  * Draws an "X" symbol in a given cell of the board.
  * @param row an integer representing the index of the row the "X" can be found.
  * @param col an integer representing the index of the column the "X" can be found.
  */
  void drawX(int row, int col){
    fill(0, 0, 0);
    textAlign(CENTER);
    textSize(width/3);
    text("X", (col + 1) * 100, 575);
  }
  
  /**
  * Draws an "O" symbol in a given cell of the board.
  * @param row an integer representing the index of the row the "O" can be found.
  * @param col an integer representing the index of the column the "O" can be found.
  */
  void drawO(int row, int col){
    float scale = width / 3;
    strokeWeight(1);
    fill(0, 0, 0);
    circle((col + 1) * scale - 100, (row + 1) * scale - 100, scale * 0.8);
    fill(255, 255, 255);
    circle((col + 1) * scale - 100, (row + 1) * scale - 100, scale * 0.6);
    
  }
}
