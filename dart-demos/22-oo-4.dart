

class Point{

  int x;
  int y;

  Point(this.x, this.y);

  show(){
    print('Point($x, $y)');
  }

  get slope{
    return y/x;
  }

}

void main(){

  var p1=Point(3,4);

  var origin=new Point(0,0);
 
  p1.show();

  origin.show();

 

}