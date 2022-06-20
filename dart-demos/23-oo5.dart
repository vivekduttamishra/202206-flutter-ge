class Point {
  // late keyword is not requirede if we are initializing the fields directly in constructor
  int x;
  int y;
  String color;
  // Named parameter, here the sequence could be anything
  Point({ required this.x, required this.y, this.color = 'black'});

  // method/ behavior/ action of the class
  show(){
    print('$color Point ($x, $y)');
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
  var p1 = Point(x:3, y:4, color:'blue');
  // create object with named parameter
  var origin = Point(y:0, x:1, color:'pink');
  p1.show();
  origin.show(); 

  
}