final class Speed extends Shape {
  //Global Variables
  private boolean buttonOver = false, ballSpeedEasy;
  private float buttonWidth, buttonHeight;
  private int ySpeed = 0, speed = 0, rightGoalScore, leftGoalScore;
  //
  //Constructor 
  private Speed (float x, float y, float w, float h) {
    super(x, y, w, h);
    buttonWidth = width / 5;
    buttonHeight = width / 0.05;
  }//End Constructor 
  //
  public void draw() {
    ballSpeedEasy = speedButton("Easy Speed", width - buttonWidth - 10, buttonHeight + 20, buttonWidth, buttonHeight);
  }//End draw
  //
  void speedControl() {
    if (ballSpeedEasy) {
      speed = 2;
      //this.xSpeed = int((width / width) * speedBall);
      this.ySpeed = int((height / height) * speed);
    }
  }//End speedControl
  //
  boolean mouseInArea(float xButton, float yButton, float wButton, float hButton) {
    return (mouseX > xButton && mouseX < xButton + wButton && mouseY > yButton && mouseY < yButton + hButton);
  }
  //
  boolean speedButton(String tag, float xButton, float yButton, float wButton, float hButton) {
    boolean hover = mouseInArea(xButton, yButton, wButton, hButton);
    fill(#69D364);
    rect(xButton, yButton, wButton, hButton);
    fill(0);
    float sizeOfText = hButton/4;
    textSize(sizeOfText);
    while (textWidth(tag) > wButton) textSize(sizeOfText--);
    text(tag, xButton + wButton / 2, (yButton + hButton / 2) - textDescent() / 2);
    if (hover)
    {
      fill(255, 255, 255, 100);
      rect(xButton, yButton, wButton, hButton);
    }
    return hover;
  }//End 
  //
  //Common Methods
  void leftPaddleBounce(float x, float y, float h, float w) {
  }
  void rightPaddleBounce(float x, float y, float h) {
  }
  void scoreObjects(int rightGoalScore, int leftGoalScore) {
  }
  //void playingModes(float x, float y) {}
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
}//End Speed
