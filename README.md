# Final-Project-Pong
Final Project Computer Science 30 - Pong

**Purpose Of The Project:**

- To create a working pong game.
- Apply all of the lessons we learned.

**Description Of The Program:**

- It's a pong game made using classes, methods, encapsulation, inheritance.
- There is an abstract Shape class which controls classes Ball and Paddles.
- Ball class extends Shape class and controls ball behavior.
    - Ball speed is controlled by the user by pressing specific keys.
- Paddles class also extends Shape class and controls paddles behavior.

MAIN Program:

- Anonymous class is used to print instructions with auto-sizing text.  
    - A text calculator is used for auto-sizing of text.
- Void setup():
    - First the Size() parameter sets the screen to 700 by 500 pixels.
    - Instructions is added to shapes array list as element 0.
    - Values(x, y, w, h) for left paddle, right paddle, and ball is sent from main program to constructors.  
    - Left paddle is added to shapes array list as element number 1.
    - Right paddle is added to shapes array list as element number 2.
    - Ball is added to shapes array list as element number 3.
- Void draw():
    - Background is set to 0(black background).
    - The If statement checks if instructionOn variable is true and if it is, instruction panel is drawn.
    - Next If statement checks if the instrctionOn variable is false and if it is, instruction panel is removed, then ball and Paddles are drawn. Also the class communicate. Getters are sent from one class to another.  
- Void keyPressed():
    - Takes care of key interaction.
    - Nested If statements sets instructions to false if they are true otherwise they are kept on, when "I" or "i" key is pressed.  
    - Paddles movements are controlled by keys:
        - Left Paddle uses keys W, S, D:
            - Key "W" or "w" moves the paddle upwards.
                - Variable leftPaddle is temporary set to be left paddle with variables (x, y, w, h);
                - Method upMovementPaddles() is called which sets up movement to be true and down movement to be false.
                - Shapes sets the left paddle.
            - Key "S" or "s" moves the paddle downwards.
                - Variable leftPaddle is temporary set to be left paddle with variables (x, y, w, h);
                - Method downMovementPaddles() is called which sets down movement to be true and up movement to be false.
                - Shapes sets the left paddle.
            - Key "D" or "d" stopes the paddle movement.
                - Variable paddleStop is temporary set to be left paddle with variables (x, y, w, h);
                - Method stopPaddle() is called which sets both up and down movements to be false.
                - Shapes sets the left paddle.
        - Right Paddle uses keys UP, DOWN, LEFT:
            - Key "UP" moves the paddle upwards.
                - Variable rightPaddle is temporary set to be right paddle with variables (x, y, w, h);
                - Method upMovementPaddles() is called which sets up movement to be true and down movement to be false.
                - Shapes sets the right paddle.
            - Key "DOWN" moves the paddle upwards.
                - Variable rightPaddle is temporary set to be right paddle with variables (x, y, w, h);
                - Method downMovementPaddles() is called which sets down movement to be true and up movement to be false.
                - Shapes sets the right paddle.
            - Key "UP" moves the paddle upwards.
                - Variable paddleStop is temporary set to be left paddle with variables (x, y, w, h);
                - Method stopPaddle() is called which sets both up and down movements to be false.
                - Shapes sets the right paddle.
    - Game could be restarted using a specific key.:
        - Key "V" or "v" restarts the game.
            - variables are used to call void draw() for ball and paddle class, which draws the ball and paddles.
            - Void draw() also has code for ball and paddle behavior.
- Class communication is done through main program where a method from a class is received and send to another class. 

Shape Class:

- Shape class is an abstract class which is extended by ball class and paddles class.
- Variables x, y, w, h in shape class is public as those variables are used in other classes.
- Shape class is used for class communication.
- Shape class includes common methods form ball class and paddle class which is used for class communication from main program.

Ball Class:

- Ball class is a final class.
    - As it's not further extended.
    - Class hierarchy breaks there and no other classes extends ball class.
- Includes private variables which are only used in ball class.
- Methods are used to controls ball behavior.
    - ballMove() method increments x variable by xSpeed and y variable by ySpeed.
        - Ball's x value adds value of xSpeed each time, this controls ball's x Speed.
        - Ball's y value adds value of ySpeed each time, this controls ball's y Speed.
    - The method bounceBall() takes care of ball bouncing of the sides and resetting ball in the middle if a person scores.
        - First if Statement includes code so if the ball is in that range, ball will reset in the middle.
        - Second if statement includes code so the ball bounces off the top and bottom and so it doesn't go off the screen.
    - ballScore() method takes care of score.
        - Includes methods ballMove() and bounceBall().
        - Nested If statement stats net detection so score could be incremented when ball reaches the net.
        - Last If statement checks if left goal or right goal is true than it calls the method scoreSetter(), otherwise ball keeps moving.
    - scoreSetter() prints which player wins on canvas.
        - Nested if statement checks if left or right score equals 5.
        - Which ever player scores 5 first, wins and winner is printed on canvas.
    - At the end common methods, getters, and setters are included for class communication.


Paddles Class:

- Paddles is also a final class.
    - Paddle class is not further extended.
    - Class hierarchy breaks and no other classes extends paddles class.
- Paddles class includes private variables which are only used in paddles class.
- Different methods controls different paddle behaviors.
    - Public void draw() is used to draw paddles.
    - private method ballMove() controls paddles movement up and down.
        - If statement checks if paddle move Up or down is true then yMove is added or subtracted in order to move the paddle.
        - Few other If statements check if the paddles are going off the screen.
              - If statement sets the range so the paddle doesn't go off the screen.
              - Paddle speed is set to 0 if paddle reaches the edge.


Display Method:

- Display method checks if the screen is landscape or portrait.
- If it is landscape the game works fine.
- If the screen is portrait the game would work but not as nicely as it would with landscape mode.

**Instructions On How To Use The Program:**

- First the instruction panel will appear describing how to play Pong.
    - Click on the screen and press the key "I" or "i" to remove the instruction panel.
    - If you need to read the instructions again, press the key "I" or "i" and the instruction panel will reappear.
- The ball speed is controlled by keys.
    - Press the key "X" or "x" for slow speed and easy game.
    - Press the key "R" or "r" for medium speed and regular game.
    - Press the key "F" or "f" for faster speed and challenging game.
- Movement of the paddles are also controlled by the keys.
    - Right Paddle key controls:
        - "UP" key moves the paddle upwards.
        - "DOWN" key moves the paddle downwards.
        - "Left" key stopes the paddle.
    - Left Paddle key controls:
        - "W" and "w" keys moves the paddle upwards.
        - "S" and "s" keys moves the paddle downwards.
        - "D" and "d" keys stopes the paddle.
