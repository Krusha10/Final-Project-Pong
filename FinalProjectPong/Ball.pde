final class Ball extends Shape {
  //Global variables
  private float diameter, x0Button, y0Button, w0Button, h0Button, buttonWidth, buttonHeight;
  private int xSpeed, ySpeed, leftGoalScore = 0, rightGoalScore = 0, speed = 0, speedBall = 0;
  private color resetColor = #FFFFFF;
  private PFont buttonTextFont;
  private boolean xLeftBallGoal = false, xRightBallGoal = false, ballSpeedEasy;
  //
  //Constructor 
  private Ball (float x, float y, float w, float h) {
    super(x, y, w, h);
    diameter = w;
    x0Button = x * 1/2;
    y0Button = y + 1/2;
    w0Button = w * 2;
    h0Button = h + 1/2;
    buttonWidth = width / 5;
    buttonHeight = width / 0.05;
    //this.xSpeed = int(random(1, 10));
    //this.ySpeed = int(random(1, 10));
  }//End Constructor 
  //
  public void draw() {
    fill(#FFF640);
    ellipse(x, y, w, h);
    fill(resetColor);
    buttonDraw();
    //ballSpeed();
    //ballMove();
    //bounceBall();
    ballScore();
  }//End draw
  //BUTTON TO BE MADE:
  //
  void buttonDraw() {
    rect(x0Button, y0Button, w0Button, h0Button);
    if (ballSpeedEasy == true) {
      this.xSpeed = 2;
      this.ySpeed = 2;
    }
    buttonTextSetUp();
  }//End buttonDraw
  //
  void buttonTextSetUp() {
    buttonTextFont = createFont("Georgia", 50);
    buttonTextDraw();
  }
  //
  void buttonTextDraw() {
    fill(#6DE5A2);
    textAlign(CENTER, CENTER);
    textFont(buttonTextFont, 20);
    //
    text("Easy Game", x0Button, y0Button, w0Button, h0Button);
    fill(resetColor);
  }
  //
  void mousePressed() {
    ballSpeedEasy = false;
    if ( mouseX>=x0Button && mouseX<=x0Button+w0Button && mouseY>=y0Button && mouseY<=y0Button+h0Button ) {
      println("CLICKED");
      ballSpeedEasy = true;
    }
  }//End buttonMousePressed
  //
  /*
  private void ballSpeed() {
   if (speedBall == 0 ) {
   if (key=='X' || key=='x') speedBall = 2;
   if (key=='R' || key=='r') speedBall = 5;
   if (key=='F' || key=='f') speedBall = 10;
   this.xSpeed = int((width / width) * speedBall);
   this.ySpeed = int((height / height) * speedBall);
   }
   }//End ballSpeed
   //
   */
  //
  //
  private void ballMove() {
    x += xSpeed;
    y += ySpeed;
  }//End ballMove
  //
  private void bounceBall() { //Bounce off the sides 
    if (x - diameter*1/2 < width*0 || x + diameter*1/2 > width) {
      //xSpeed *= 0; 
      //ySpeed *= 0;
      x = width*1/2;
      y = height*1/2;
    }
    if (y - diameter*1/2 < height*0 || y + diameter*1/2 > height) ySpeed *= -1;
  }//End Bounce
  //
  void ballScore() {
    ballMove();
    bounceBall();
    //
    if ( x < (width*0) + diameter ||x > width - diameter ) { //Net detection
      if ( x < (width*0) + diameter) {
        //Score
        xLeftBallGoal = true;
        leftGoalScore ++;
        x = width*1/2;
        y = height*1/2;
      }//Goal for left player
      if ( x > width - diameter) {
        //Score
        xRightBallGoal = true;
        rightGoalScore ++;
        x = width*1/2;
        y = height*1/2;
      }//Goal for right player
    }//End Net detection 
    //
    if (xLeftBallGoal == true || xRightBallGoal == true) {
      scoreSetter();
    } else {
      ballMove();
    }
    //
    textAlign(int(width*1/4), int( height * 1.2));
    textSize(width*1/30);
    fill(#FF9558);
    text(rightGoalScore, width/4, width*1/14);
    textAlign(int(width*1/4), int( height * 1.2));
    textSize(width*1/30);
    fill(#FF9558);
    text(leftGoalScore, width/1.35, width*1/14);
  }//End ballScore
  //
  void scoreSetter() {
    if (leftGoalScore == 5 || rightGoalScore == 5) {
      if (rightGoalScore == 5) {
        background(#A58C8C);
        //paddles.paddleMoveReset();
        xSpeed = 0;
        ySpeed = 0;
        textAlign(CENTER);
        textSize(width*1/30);
        fill(#FF9558);
        text("WINNER", width/2, width*1/5);
        fill(#FF9558);
        text("LEFT PLAYER WINS!", width/2, width*1/4);
        leftGoalScore = 0;
      }
      if (leftGoalScore == 5) {
        background(#A58C8C);
        //paddles.paddleMoveReset();
        xSpeed = 0;
        ySpeed = 0;
        textAlign(CENTER);
        textSize(width*1/30);
        fill(#FF9558);
        text("WINNER", width/2, width*1/5);
        fill(#FF9558);
        text("RIGHT PLAYER WINS!", width/2, width*1/4);
        rightGoalScore = 0;
      }
    }
  }
  //
  //Common methods
  //
  //Getters
  public void leftPaddleBounce( float xPaddleLeft, float yPaddleLeft, float paddleHeight, float paddleWidth) {
    if ( x < xPaddleLeft + paddleWidth + (diameter*1/2) && y > yPaddleLeft && y < yPaddleLeft+paddleHeight ) xSpeed *= -1;
  }
  public void rightPaddleBounce( float xPaddleRight, float yPaddleRight, float paddleHeight) {
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
  int scoreLGetter() {
    return rightGoalScore;
  }
  int scoreRGetter() {
    return leftGoalScore;
  }
  void scoreObjects(int rightGoalScore, int leftGoalScore) {
  }
  //void playingModes(float x, float y) {}
}//End Ball
