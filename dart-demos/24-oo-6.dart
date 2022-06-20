

class Point{

  int x;
  int y;
  String color;

  Point(this.x , this.y , {this.color='black'});


  show(){
    print('$color Point($x, $y)');
  }

  get slope{
    return y/x;
  }

}

void main(){

  var p1=Point(3,4, color:'blue');

  var origin=new Point(0, 0);

  
  p1.show();

  origin.show();

 

}