

class Point{

  late int x;
  late int y;

  show(){
    print('Point($x, $y)');
  }

  get slope{
    return y/x;
  }
}

void main(){

  var p1=Point();
  p1.x=3;
  p1.y=4;

  p1.show();

  print(p1);

  print(p1.slope);

}