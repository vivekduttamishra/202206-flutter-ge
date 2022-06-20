void main(){

  var numbers=[2,3,4,5,9];
  print(numbers);

  numbers.add(50);
  print(numbers);

  //numbers.add(50.9);
  //numbers.add('hi');

  print('looping using standard for loop...');
  for(int i=0;i<numbers.length;i++)
    print(numbers[i]);


  print('looping using for-each loop...');
  for(int number in numbers)
    print(number);


  //dart throws error if you try to access index out of bound
  print(numbers[100]);

}