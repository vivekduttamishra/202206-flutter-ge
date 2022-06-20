void main(){

  var x=50;
  var y=25;

  List<Function> operations = [plus,minus,multiply];

  for(var i=0;i<operations.length;i++){

    var result = operations [i] (x,y);
    Function f=operations[i] (x,y);

    var i1= operations[i].toString().indexOf('\'');
    var i2= operations[i].toString().lastIndexOf('\'');

    var name=operations[i].toString().substring(i1+1,i2);

    print('$name($x,$y)=>$result');

  }
  

}

int plus(int x, int y){
  return x+y;
}

int minus(int x, int y){
  return x-y;
}

int multiply(int x, int y){
  return x+y;
}
