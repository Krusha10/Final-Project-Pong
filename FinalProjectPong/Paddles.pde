class Paddles extends Shape {
  //Global variables
  private Boolean moveUp, moveDown;
  private int yMove;
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
    paddleMove();
  }//End draw
  //
  void paddleMove() {
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
  void upMovementPaddles() {
    moveUp = true;
    moveDown = false;
  }//End upMovementPaddle 
  void downMovementPaddles() {
    moveUp = false;
    moveDown = true;
  }//End downMovementPaddle
  void stopPaddle() {
    moveUp = false;
    moveDown = false;
  }//End stopPaddle
  //
  //Common methods
  //
  //
  //Getters
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
}//End Paddles
