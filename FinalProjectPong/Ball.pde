class Ball extends Shape {
  //Global variables
  private float diameter;
  private int xSpeed, ySpeed;
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
    ballMove();
    bounceBall();
  }//End draw
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
