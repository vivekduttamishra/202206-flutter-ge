

int plus(int x, int y){
  return x+y;
}

int minus(int x, int y){
  return x-y;
}

void calculator(int number1, Function operator, int number2){

  var result = operator(number1, number2);
  
    var fstr=operator.toString();

    var i1= fstr.indexOf('\'');
    var i2= fstr.lastIndexOf('\'');
    var name='custom';
    
    if(i1>-1)
      name=fstr.substring(i1+1,i2);

    

    print('$name($number1,$number2)=>$result');

}

void main(){

  var x=50;
  var y=15;

  calculator(x, plus, y);
  calculator(x, minus, y); 

  int multiply(int x,int y){
    return x*y;  
  }

  var divide = (x,y){
    return x/y;
  };

  calculator(x,multiply,y);

  calculator(x,divide,y);

  calculator(x,  (a,b){return (a+b)*(a-b);}  ,y);

  var mod= (x,y) => x%y;
  
  calculator(x, mod, y); //20


  calculator(x, (a,b)=> a*a + b*b, y );
 

}