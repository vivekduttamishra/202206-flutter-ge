main(){
  int a = 20; // explicit type if int
  // a = 'hi'; can't assign other types
  print('a=> $a');
  a= 30;
  print('a=> $a');

  var b= 20;
  print('b=> $b');
  b= 40;
  print('b=> $b');

  // b= 'hello' // not allowed

  var c = 'hello world';
  print('${c.toLowerCase()}'); // get proper intellisense

  dynamic d= 'hellow world';
  print("${d}"); // since d is dynmiac intellisense will be limited
  print("${d.toLowerCase()}"); // will call the methodon run time
  // print("${d.toLowerCases()}"); // Error will come during run time, not at compile time

}

plus(x, y){ // these variables become dynamic
  return x+y;
}
