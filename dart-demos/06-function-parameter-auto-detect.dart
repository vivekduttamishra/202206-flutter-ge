main(){
  var x = 20;
  var y = 30;

  var z= plus(x,y); // z will get datatype of function being called
  print("sum of $x + $y = $z");

}

int plus(x, y){ // these variables become dynamic
  return x+y;
}
