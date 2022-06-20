

import 'dart:math';  //importing a library from dart for math

class Point{

  late double x;
  late double y;
  String color;

  Point(this.x , this.y , {this.color='black'});

  Point.vector(double r, double theta,{this.color='balck'}){

    var rad = 3.14159/180*theta;

    x= r* cos(rad) ;
    y= r* sin(rad);
  }

  show(){
    print('$color Point($x, $y)');
  }

  get slope{
    return y/x;
  }

}

void main(){

  var origin=Point(0, 0);

  var p1= Point.vector(5, 45,color:'red');

  origin.show();

 p1.show();

}