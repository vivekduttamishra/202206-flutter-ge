void main(){

  int a=20; //explicit type of int
  //a='hi'; //---> can't assign other types to

  print('a => $a');

  a=30;
  print('a => $a');


  var b=20; // same  as int b=20; //
  print('b=>$b');

  b=40;
  print('b=>$b');

  //b='hello'; //not allowed;

  var c='hello world';
  print('${c.toUpperCase()}');


  dynamic d='hello world';

  print("${d.toLowerCases()}");


  var e; 

  e='hello';

}