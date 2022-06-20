class Point {
  // class field should be initialised immediated, if we need to init later in constructor or somewhere else we need to mark it late
  late int x;
  late int y;

}


void main(){
  var p1 = Point();
  p1.x = 20;
  p1.y = 30;
  print('Point (${p1.x} ${p1.y})');
}