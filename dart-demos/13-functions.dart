void main(){

  var x=50;
  var y=25;

  Function add=plus;

  var result = add(x,y);

  print('add($x,$y)=>$result');

  Function wish=greet; 

  wish('Vivek');

}

int plus(int x, int y){
  return x+y;
}

void greet(name){
  print('Hello $name, welcome to DART');
}