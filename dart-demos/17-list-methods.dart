void main(){

  List<int> numbers=[];

  for(int i=1;i<=100;i++)
    numbers.add(i);

  numbers.shuffle(); //randomize int


  //how do I print all the value in the list without using explicit loop
  
  //numbers.forEach(print);

  //how do I sum all the values

  var sum=0;

  numbers.forEach( (number) => sum += number );
  
  print('sum is $sum');



  //find all items which are divisible by 3 or 5.

  var result = numbers.where( (x)  =>  x%3==0 || x%5==0 );

  var list = result.toList();

  print(list);








}




