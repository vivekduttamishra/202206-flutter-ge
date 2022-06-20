main(){
  var x = 30; // auto detect as int
  var y = 20;

  var sum = x+y;
  dynamic div = x/y; // auto detects as double

  // any datatype will need to be converted before contactinating with string
  print("Dividing $x by $y returns $div");
  print("Sum of $x and $y returns $sum");

  //sum = 'blah'; // this will throw error as sum is already int
  div = 'Some string';
 
  print(' new value of div is => $div' );

}