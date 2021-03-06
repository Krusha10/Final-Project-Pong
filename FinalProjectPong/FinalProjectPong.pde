//Global Variables
private ArrayList<Shape> shapes = new ArrayList<Shape>();
private Boolean instructionOn = true;
//
private Shape instrctions = new Shape(width, height*1/4, 500, 450) {
  //Global variables 
  PFont titleFont;
  //
  String note = "LET'S PLAY PONG \n * To play pong click the screen and press I to remove instruction panel and to get started \n * While score moves up the paddle size will decrease and the game will get challenging \n * Ball Speed is controlled by keys: \n * Press 'X' or 'x' for slow speed and easy game\n * Press 'R' or 'r' for medium speed and regular game\n * Press 'F' or 'f' for faster speed and challenging game  \n * The game is best of 5, whoever scores 5 first wins the game";
  //
  color darkPinkInk = #D65083;
  color resetColor = #000000;
  int rightGoalScore, leftGoalScore;
  //
  //Two void draws to be fixed 
  public void draw() {
    textSetup();
    fill(#FAF688);
    rect(x, y, w, h);//Background for instructions display
    //Text code here:
    fill(#FFFFFF);//Reset color
    textDraw( h, darkPinkInk, CENTER, CENTER, titleFont, note, x, y, w, h );
  }
  //Methods for possible text drawing
  //
  //Text Calculator 
  //
  private void textSetup()
  {
    titleFont = createFont("Georgia", 55);
  }
  //
  private void textDraw(float height, color ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec) 
  {
    fill(ink);
    textAlign(alignHorizontal, alignVerticle);
    textFont(font, height);
    textSize(textCalculator(height, string, widthRec));  
    text(string, xRect, yRec, widthRec, heightRec);
    textReset();
  }//End textDraw()

  private void textReset()
  {
    fill(resetColor); // Ink to default
  }//End textReset()
  //
  private float textCalculator(float size, String string, float widthRec) 
  {
    textSize(size);
    while (textWidth(string) > widthRec) 
    {
      size = size * 0.9;
      textSize(size);
    }//End While
    return size;
  }//End textCalculator
  //
  public void leftPaddleBounce(float x, float y, float h, float w) {
  }
  public void rightPaddleBounce(float x, float y, float h) {
  }
  public void scoreObjects(int rightGoalScore, int leftGoalScore) {
  }
  public float xGetter() {
    return x;
  }
  public float yGetter() {
    return y;
  }
  public float wGetter() {
    return w;
  }
  public float hGetter() {
    return h;
  }
  public int scoreLGetter() {
    return rightGoalScore;
  }
  public int scoreRGetter() {
    return leftGoalScore;
  }
  //void playingModes(float x, float y) {}
}
;//End instrctions
//
void setup() {
  size(500, 700);
  display();
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
    shapes.get(3).leftPaddleBounce(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).hGetter(), shapes.get(1).wGetter());
    shapes.get(3).rightPaddleBounce(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).hGetter());
    shapes.get(1).scoreObjects(shapes.get(3).scoreRGetter(), shapes.get(3).scoreLGetter());
    shapes.get(2).scoreObjects(shapes.get(3).scoreRGetter(), shapes.get(3).scoreLGetter());
    //
    for (int i = 1; i < shapes.size(); i++) {
      shapes.get(i).draw();
    }//End for loop
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
  //
  //
  if (key == CODED && key == 'W' || key == 'w') {
    Paddles leftPaddle = new Paddles(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter());
    leftPaddle.upMovementPaddles();
    shapes.set(1, leftPaddle);
  }//End W key
  if (key == CODED && key == 'S' || key == 's') {
    Paddles leftPaddle = new Paddles(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter());
    leftPaddle.downMovementPaddles();
    shapes.set(1, leftPaddle);
  }//End S key
  if (key == CODED && key == 'D' || key == 'd') {
    Paddles paddleStop = new Paddles(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter());
    paddleStop.stopPaddle();
    shapes.set(1, paddleStop);
  }//End D key
  //
  //RightPaddle, element 1
  if (key == CODED && keyCode == UP) {
    Paddles rightPaddle = new Paddles(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).wGetter(), shapes.get(2).hGetter());
    rightPaddle.upMovementPaddles();
    shapes.set(2, rightPaddle);
  }//End Up key
  if (key == CODED && keyCode == DOWN) {
    Paddles rightPaddle = new Paddles(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).wGetter(), shapes.get(2).hGetter());
    rightPaddle.downMovementPaddles();
    shapes.set(2, rightPaddle);
  }//End Down key
  if (key == CODED && keyCode == LEFT) {
    Paddles paddleStop = new Paddles(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).wGetter(), shapes.get(2).hGetter());
    paddleStop.stopPaddle();
    shapes.set(2, paddleStop);
  }//End Left key
  //
  //
  //
  if (key == CODED && key == 'V' || key == 'v') {
    Paddles resetLPaddle = new Paddles(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter());
    resetLPaddle.draw();
    resetLPaddle.resetPaddle();
    shapes.set(1, resetLPaddle);
    Paddles resetRPaddle = new Paddles(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).wGetter(), shapes.get(2).hGetter());
    resetRPaddle.draw();
    resetRPaddle.resetPaddle();
    shapes.set(2, resetRPaddle);
    Ball resetBall = new Ball(shapes.get(3).xGetter(), shapes.get(3).yGetter(), shapes.get(3).wGetter(), shapes.get(3).hGetter());
    resetBall.draw();
    shapes.set(3, resetBall);
  }//End D key
}//End keyPressed
//
void mousePressed() {
  //Ball ballSpeed = new Ball(shapes.get(3).xGetter(), shapes.get(3).yGetter(), shapes.get(3).wGetter(), shapes.get(3).hGetter());
  //ballSpeed.buttonMousePressed();
}//End mousePressed
//
//End Main(driver)
