abstract private class Shape {
  //Global variables 
  public float x, y, w, h;
  //
  //Constructor 
  private Shape(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }//End Constructor 
  //
  public abstract void draw();
  //
  //Common Methods
  abstract public void leftPaddleBounce(float x, float y, float h, float w);
  abstract public void rightPaddleBounce(float x, float y, float h);
  abstract public void scoreObjects(int rightGoalScore, int leftGoalScore);
  //abstract void playingModes(float x, float y) ;
  abstract public float xGetter();
  abstract public float yGetter();
  abstract public float wGetter();
  abstract public float hGetter();
  abstract public int scoreLGetter();
  abstract public int scoreRGetter();
}//End Shape
