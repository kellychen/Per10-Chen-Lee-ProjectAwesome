public class ToG1 {
  PImage bg;
  int bgxcor;
  Jiji j;

  //G1(){
  //  go = false;
  //}

  //void g1() {
  //}

  void setup() {
    j = new Jiji();
    j.setup();
    bg = loadImage("road.jpg");
  }

  void draw() {
    //background(150);
    image(bg, bgxcor % 1000, 0);
    image(bg, 1000+(bgxcor % 1000), 0);
    check();
    j.draw();
  }

  void scrollright() {
    bgxcor = bgxcor - 25;
  }
  
  void scrollleft(){
    bgxcor = bgxcor + 25;
  }
  
  void check(){
    if (bgxcor == -200){
      game1 = true;
      togame1 = false;
    }
  }
}

