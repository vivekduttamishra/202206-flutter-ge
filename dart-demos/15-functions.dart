
main(){
  var x = 20;
  var y = 30;


  List<Function> operations = [plus, minus, multiply];

  for(var operation in operations){
    var result = operation(x,y);

    var fstr = operation.toString();
    var i1 = fstr.indexOf('\'');
    var i2 = fstr.lastIndexOf('\'');
    var name = fstr.substring(i1+1, i2);

    print('${name}($x,$y) => $result');
  }

}

int plus(int x, int y){
  return x+y;
}


int minus(int x, int y){
  return x-y;
}


int multiply(int x, int y){
  return x*y;
}
