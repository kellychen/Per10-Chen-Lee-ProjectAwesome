public class Jiji {
  int health;
  int xcor;
  int ycor;
  int jumpHeight;
  boolean up;
  boolean down;
  PImage jiji;

  void setup() {
    jiji = loadImage("jiji.png");
    health = 3;
    ycor = 450;
  }

  void setycor(int ycor) {
    this.ycor = ycor;
  }

  void draw() {
    image(jiji, xcor, ycor);
    jump();
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        if (!up && !down) {
          up = true;
          tempmillis = millis();
        }
      } else if (key == 'a' || key == 'A') {
        moveLeft();
      } else if (key == 'd' || key == 'D') {
        moveRight();
      }
    }
  }

  void jump() {
    if (millis() - tempmillis > 25) {
      if (ycor <= 350) {
        g1.scrollup();
      }
      if (ycor < 600 && ycor > 0) {
        if (up && jumpHeight < 150) {
          ycor = ycor - 25;
          jumpHeight = jumpHeight + 25;
        } else if (up && jumpHeight >= 150) {
          up = false;
          down = true;
        } else if (down && jumpHeight > 0) {
          ycor = ycor + 25;
          jumpHeight = jumpHeight - 25;
        } else if (down && jumpHeight <= 0) {
          down = false;
        }
        tempmillis = millis();
      }
    }
  }

  void moveRight() {
    if (xcor < 500) {
      xcor = xcor + 25;
    } else if (xcor < 900) {
      tg1.scrollright();
    }
  }
  void moveLeft() {
    if (xcor > 0) {
      xcor = xcor - 25;
    } else {
      tg1.scrollleft();
    }
  }
}

