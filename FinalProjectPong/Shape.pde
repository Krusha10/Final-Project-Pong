abstract class Shape {
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
  abstract void leftPaddleBounce(float x, float y, float h, float w);
  abstract void rightPaddleBounce(float x, float y, float h);
  abstract float xGetter();
  abstract float yGetter();
  abstract float wGetter();
  abstract float hGetter();
}//End Shape
