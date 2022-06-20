main(){
  var x = 20;
  var y = 30;

  var z= plus(x,y); // if function does not have a return type z will be dynamic
  print("sum of $x + $y = $z");

}

plus(x, y){ // these variables become dynamic
  return x+y;
}
