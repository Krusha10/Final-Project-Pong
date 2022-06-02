final class Ball extends Shape {
  //Global variables
  //
  //Constructor 
  Ball (float x, float y, float w, float h) {
    super(x, y, w, h);
  }//End Constructor 
  //
  void draw() {
    fill(100);
    ellipse(x, y, w, h);
  }//End draw
  //
  //Common methods
}//End Ball
