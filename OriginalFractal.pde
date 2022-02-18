int siz = 0;

public void setup() {
  size(500, 500);
}
public void draw() {
  background(0);
  mouseDragged();
  fill(siz, siz, siz);
  Fractal(250, 250, siz);
}
public void mouseDragged() {
  siz = mouseX;
}
public void Fractal(int x, int y, int siz) {
  triangle(x-siz, y, x-siz/2, y-siz, x, y);
  triangle(x-siz/2, y-siz, x+siz/2, y-siz, x, y);
  triangle(x, y, x+siz/2, y-siz, x+siz, y);
  triangle(x, y, x+siz, y, x+siz/2, y+siz);
  triangle(x-siz/2, y+siz, x, y, x+siz/2, y+siz);
  triangle(x-siz, y, x, y, x-siz/2, y+siz);
  if(siz > 10) {
    Fractal(x,y,siz/2);
    triangle(x-(siz*3/4), y-siz/2, x-(siz*1/4), y-siz/2, x-siz/2, y);
    triangle(x-(siz*1/4), y-siz/2, x, y-siz, x+(siz*1/4), y-siz/2);
    triangle(x+(siz*1/4), y-siz/2, x+(siz*3/4), y-siz/2, x+siz/2, y);
    triangle(x+siz/2, y, x+(siz*3/4), y+siz/2, x+(siz*1/4), y+siz/2);
    triangle(x+(siz*1/4), y+siz/2, x, y+siz, x-(siz*1/4), y+siz/2);
    triangle(x-(siz*1/4), y+siz/2, x-(siz*3/4), y+siz/2, x-siz/2, y);
  }
}
