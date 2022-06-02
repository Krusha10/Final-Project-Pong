final class Paddles extends Shape {
  //Global variables
  //
  //Constructor 
  Paddles (float x, float y, float w, float h) {
    super(x, y, w, h);
  }//End Constructor 
  //
  void draw() {
    fill(200);
    rect(x, y, w, h);
  }//End draw
  //
  //Common methods
}//End Paddles
