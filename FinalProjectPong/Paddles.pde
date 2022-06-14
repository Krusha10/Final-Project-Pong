final class Paddles extends Shape {
  //Global variables
  private Boolean moveUp, moveDown, screenSaver = false, singlePlayer = false;
  private int yMove, paddleSpeed = 0, rightGoalScore, leftGoalScore;
  //
  //Constructor 
  private Paddles (float x, float y, float w, float h) {
    super(x, y, w, h);
    this.yMove = 5;
    this.moveUp = false;
    this.moveDown = false;
  }//End Constructor 
  //
  public void draw() {
    fill(#FFF640);
    rect(x, y, w, h);
    //paddlesSpeed();
    paddleMove();
  }//End draw
  //
  //
  private void paddleMove() {
    if (moveUp == true) y -= yMove;
    if (moveDown == true) y += yMove;
    //
    if (y <= height*0) y = 0;
    if (y >= height - h) y = height - h;
    if (y <= height*0) y = 0;
    if (y >= height - h) y = height - h;
    //
  }//End paddleMove
  //
  //Setters
  private void upMovementPaddles() {
    moveUp = true;
    moveDown = false;
  }//End upMovementPaddle 
  private void downMovementPaddles() {
    moveUp = false;
    moveDown = true;
  }//End downMovementPaddle
  private void stopPaddle() {
    moveUp = false;
    moveDown = false;
  }//End stopPaddle
  //
  //Common methods
  //
  //
  //Getters
  void leftPaddleBounce(float x, float y, float h, float w) {
  }
  void rightPaddleBounce(float x, float y, float h) {
  }
  float xGetter() {
    return x;
  }
  float yGetter() {
    return y;
  }
  float wGetter() {
    return w;
  }
  float hGetter() {
    return h;
  }
  int scoreLGetter() {
    return rightGoalScore;
  }
  int scoreRGetter() {
    return leftGoalScore;
  }
  void scoreObjects(int rightScore, int leftScore) {
    if (leftScore == 2 || rightScore == 2) h = int(height*1/5);
    if (leftScore == 3 || rightScore == 3) h = int(height*1/6); 
    if (leftScore == 4 || rightScore == 4) h = int(height*1/7);
  }
}//End Paddles
