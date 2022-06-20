
main(){
  var x = 20;
  var y = 30;

  Function add = plus;
  var result = add(x,y);

  print('add($x,$y) =>  $result');

  List<Function> operations = [plus, minus, multiply];

  for(int i=0, len=operations.length; i<len; i++){
    var result = operations[i](x,y);

    print('${operations[i].toString()}($x,$y) => $result');
  }

    print('result=>  $result');

}

int plus(int x, int y){
  return x+y;
}


int minus(int x, int y){
  return x+y;
}


int multiply(int x, int y){
  return x+y;
}
