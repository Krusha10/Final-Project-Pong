//Global Variables
ArrayList<Shape> shapes = new ArrayList<Shape>();
Boolean instructionOn = true;
//
Shape instrctions = new Shape(width, height*1/4, 500, 450) {
  //Global variables 
  PFont titleFont;
  //
  String note = "YAY";
  //
  color darkPinkInk = #D65083;
  color resetColor = #000000;
  //
  void draw() {
    textSetup();
    fill(#FAF688);
    rect(x, y, w, h);//Background for instructions display
    //Text code here:
    fill(#FFFFFF);//Reset color
    textDraw( h, darkPinkInk, CENTER, CENTER, titleFont, note, x, y, w, h );
    //textDraw( h, darkPinkInk, CENTER, CENTER, titleFont, notes1, x, y, w, h );
  }
  //Methods for possible text drawing
  //
  //Text Calculator 
  //
  void textSetup()
  {
    titleFont = createFont("Georgia", 55);
  }
  //
  void textDraw(float height, color ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec) 
  {
    fill(ink);
    textAlign(alignHorizontal, alignVerticle);
    textFont(font, height);
    textSize(textCalculator(height, string, widthRec));  
    text(string, xRect, yRec, widthRec, heightRec);
    textReset();
  }//End textDraw()

  void textReset()
  {
    fill(resetColor); // Ink to default
  }//End textReset()
  //
  float textCalculator(float size, String string, float widthRec) 
  {
    textSize(size);
    while (textWidth(string) > widthRec) 
    {
      size = size * 0.9;
      textSize(size);
    }//End While
    //size = size * 0.15; //Additional decrease for Font
    return size;
  }//End textCalculator
}
;//End instrctions
//
void setup() {
  size(700, 500);
  //fullScreen();
  //INSTRUCTIONS: 
  shapes.add(instrctions);//Element 0
  //
  //Paddles and Ball 
  int yDiameter;
  int xDiameter = yDiameter = width*1/19;
  int widthRec = width*1/29;
  int heightRec = height*1/4;
  Paddles leftRec = new Paddles(width*1/40, height*1/3, widthRec, heightRec);
  Paddles rightRec = new Paddles(width*16/17, height*1/3, widthRec, heightRec);
  Ball circle = new Ball(width*1/2, height*1/2, xDiameter, yDiameter);
  //
  shapes.add(leftRec);//Element 1
  shapes.add(rightRec);//Element 2
  shapes.add(circle);//Element 3
}//End setup
//
void draw() {
  background(0);
  //
  if (instructionOn == true) shapes.get(0).draw();
  //
  if (instructionOn == false) {
    println("WOOOOOOOOOOOOOOOO");
  }
}//End draw
//
void keyPressed() {
  if (key == CODED && key == 'I' || key == 'i') {
    if (instructionOn == true) {
      instructionOn = false;
    } else {
      instructionOn = true;
    }
  }//End if
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main(driver)
