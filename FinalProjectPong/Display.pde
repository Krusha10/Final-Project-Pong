//Global variables 
int appWidth, appHeight;

void display() {
    //Display orientation: Landscape, not portrait nor square
  println(width, height, displayWidth, displayHeight);
  appWidth = width;
  appHeight = height;
  String landS = "Landscape", po = "Portrait", DO ="Display Orientation", instruction = "Please turn your Screen";
  String orientation = (appWidth >= appHeight) ? landS: po;//Ternary operator
  if (orientation == landS) {
    println("Let's play Pong");
  } else {
    println(instruction);
    appWidth = width;
    appHeight = height*1/4;
  }//End display orientation
}//End display
