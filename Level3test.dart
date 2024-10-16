class Shape {

  double? height;
  double? width;
  double x = 2;
  double y = 2;
  double rightTop;

  Shape(this.height,this.width,this.x,this.y);

  double? getwidth (double? width){
    return this.width;
  }
  double? getheight(double? height){
    return this.height;
  }


  Shape get RightTop(){
    
      
  } 

  void displaheight()
  {
    print("(width,height) : ($width,$height)");
  }
}
void main(){
  Shape obj = Shape(2, 2);
  
}