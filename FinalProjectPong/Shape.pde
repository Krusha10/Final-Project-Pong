abstract class Shape {
  //Global variables 
  public float x, y, w, h;
  //
  //Constructor 
  Shape(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }//End Constructor 
  //
  public abstract void draw();
  //
  //Common Methods
}//End Shape
