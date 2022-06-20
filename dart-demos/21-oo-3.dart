

class Point{

  late int x;
  late int y;

  Point(int x, int y){
    this.x=x;
    this.y=y;
  }


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