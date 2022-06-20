
main(){
  var x = 50;
  var y = 25;


  calculator(x, plus, y);
  calculator(x, minus, y);

}

void calculator(int number1, Function operator, int number2){
  var result = operator(number1,number2);
  var fstr = operator.toString();
  var i1 = fstr.indexOf('\'');
  var i2 = fstr.lastIndexOf('\'');
  var name = fstr.substring(i1+1, i2);

  print('${name}($number1,$number2) => $result');

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
