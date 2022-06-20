class Point {
  // class field should be initialised immediated, if we need to init later in constructor or somewhere else we need to mark it late
  late int x;
  late int y;

  // method/ behavior/ action of the class
  show(){
    print('Point ($x, $y)');
  }

  // these are properties, they are like dynamic or computable information
  // like function they contain andy loci and should return a result
  // but they are callled as if they are normal fields and not as if they are methods
  // they are used to getting or setting imformation only 
  get slope{
    return y/x;
  }
}


void main(){
  var p1 = Point();
  p1.x = 3;
  p1.y = 4;

  p1.show();

  print(p1);
  print(p1.slope);
  
}