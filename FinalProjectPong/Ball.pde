class Ball extends Shape {
  //Global variables
  private float diameter;
  private int xSpeed, ySpeed, speedBall = 0;
  private color resetColor = #FFFFFF;
  //
  //Constructor 
  private Ball (float x, float y, float w, float h) {
    super(x, y, w, h);
    diameter = w;
    this.xSpeed = int(random(1, 10));
    this.ySpeed = int(random(1, 10));
  }//End Constructor 
  //
  public void draw() {
    fill(#FFF640);
    ellipse(x, y, w, h);
    fill(resetColor);
    ballSpeed();
    ballMove();
    bounceBall();
  }//End draw
  //
  private void ballSpeed() {
    if (speedBall == 0 ) {
      if (key=='S' || key=='s') speedBall = 2;
      if (key=='R' || key=='r') speedBall = 5;
      if (key=='F' || key=='f') speedBall = 10;
      this.xSpeed = int((width / width) * speedBall);
      this.ySpeed = int((height / height) * speedBall);
    }
  }//End ballSpeed
  //
  private void ballMove() {
    x += xSpeed;
    y += ySpeed;
  }//End ballMove
  //
  private void bounceBall() { //Not A Bounce Off Paddles
    if (x - diameter*1/2 < width*0 || x + diameter*1/2 > width) {
      xSpeed *= 0; 
      ySpeed *= 0;
      //x = width*1/2;
      //y = height*1/2;
    }
    if (y - diameter*1/2 < height*0 || y + diameter*1/2 > height) ySpeed *= -1;
  }//End Bounce
  //
  //Common methods
  //
  //Getters
  void leftPaddleBounce( float xPaddleLeft, float yPaddleLeft, float paddleHeight, float paddleWidth) {
    if ( x < xPaddleLeft + paddleWidth + (diameter*1/2) && y > yPaddleLeft && y < yPaddleLeft+paddleHeight ) xSpeed *= -1;
  }
  void rightPaddleBounce( float xPaddleRight, float yPaddleRight, float paddleHeight) {
    if ( x >= xPaddleRight-w*1/2 && y > yPaddleRight && y < yPaddleRight+paddleHeight ) xSpeed *=-1;
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
}//End Ball
