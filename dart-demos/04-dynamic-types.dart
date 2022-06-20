main(){
  var x = 30; // auto detect as int
  var y = 20;

  var a = x+y;
  dynamic d = x/y; // auto detects as double at run time, like JS var or python variable

  // any datatype will need to be converted before contactinating with string
  print("$x + $y = $a");
  print("$x / $y = $d");

  d = 'hello';

  print('checking thee value of dynamic variable: $d');

}