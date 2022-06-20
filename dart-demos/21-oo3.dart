class Point {
  // class field should be initialised immediated, if we need to init later in constructor or somewhere else we need to mark it late
  late int x;
  late int y;
  // constructor is expected to initialize class field
  // dart provides a deefault zero args constructor, which is removed once custom constructor is provided
  // we still need late keyword in fieldsm there is no gaurantee that constructor will init all the fields, and when it does it is already late
  Point(int x, int y){
    this.x = x;
    this.y = y;
  }

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