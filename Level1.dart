class Point {
  int x;
  int y;

  Point(this.x, this.y);

  void translate(int dx, int dy) {
    x += dx;
    y += dy;
    print("$x,$y");
  }

}
void main() {
  Point pointObj = Point(1, 1);
  
  pointObj.translate(-2, 2);  

}