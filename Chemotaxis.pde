Bacteria[] baclist = new Bacteria[150];
void setup() {
  size(500, 500);
  background(225);
  for (int i = 0; i < baclist.length; i++) {
    baclist[i] = new Bacteria();
  }
}
void draw() {
  for (int i = 0; i< baclist.length; i++) {
    baclist[i].move();
    baclist[i].show();
  }
}

class Bacteria {
  int x, y, clr;
  public Bacteria() {
    y = (int)random(10, 490);
    x = (int)random(10, 490);
    clr = color((int)random(225), (int)random(225), (int)random(225));
  }
  public void move() {
    x += (int)random(-5, 5);
    y += (int)random(-5, 5);
  }
  public void show() {
    fill(clr);
    ellipse(x, y, 10, 10);
  }
}
