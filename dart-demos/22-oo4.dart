class Point {
  // late keyword is not requirede if we are initializing the fields directly in constructor
  int x;
  int y;
  // simplified syntax to init class variables
  Point(this.x, this.y);

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
  var p1 = Point(3, 4);
  // new keyword is optional while calling the constructor, we may or maynot use new, generally not used by coding guidelines
  var origin = new Point(0, 0);
  p1.show();
  origin.show(); 

  
}