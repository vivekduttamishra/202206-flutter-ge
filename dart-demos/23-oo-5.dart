

class Point{

  int x;
  int y;
  String color;

  Point({required this.x , required this.y , this.color='black'});

  show(){
    print('$color Point($x, $y)');
  }

  get slope{
    return y/x;
  }

}

void main(){

  var p1=Point(x:3,  y:4, color:'blue');

  var origin=new Point(y:0, x:0);

  var p2= new Point(color:'red', x:5);
 
  p1.show();

  origin.show();

 

}