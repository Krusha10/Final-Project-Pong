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

Shape Class:

-

Ball Class:

- Ball class is a final class.
    - As it's not future extended.
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

-

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
