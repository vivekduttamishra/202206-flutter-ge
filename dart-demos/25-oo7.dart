import 'dart:math';

class Point {
  // late keyword is not requirede if we are initializing the fields directly in constructor
  late double x;
  late double y;
  String color;
  // Named parameter, here the sequence could be anything
  Point(this.x, this.y, {this.color = 'black'});

  // method/ behavior/ action of the class
  show(){
    print('$color Point ($x, $y)');
  }

  Point.vector(double r, double theta, {this.color ='black'}){
    var rad = 3.14159/180*theta;

    x = r* cos(rad);
    y = r* sin(rad);
  }

  // these are properties, they are like dynamic or computable information
  // like function they contain andy loci and should return a result
  // but they are callled as if they are normal fields and not as if they are methods
  // they are used to getting or setting imformation only 
  get slope {
    return y/x;
  }
}


void main(){
  // we can mix both named and position parameters
  var p1 = Point.vector(5, 60);
  // create object with named parameter
  var origin = Point(0, 1);
  p1.show();
  origin.show(); 

  
}