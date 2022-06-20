main(){

  // Generic -> parameterised type e.g. List<int> 
  var numbers = [2,3,4,5,9];
  print(numbers);

  numbers.add(10);

  print(numbers);

  //numbers.add(50.9); // as list is automatically assigned as generic other datatypes can't be assigned
  //numbers.add('hi');

  print('using standard for loop');
  for(int i=0,len=numbers.length; i<len; i++){
    print(numbers[i]);
  }

  print('using for-each loop');
  for(int number in numbers)
    print(number);


  //dart throws error if you try to access index out of bound; Unhandled exception: RangeError (index): Invalid value: Not in inclusive range 0..5: 100
  print(numbers[100]);

}
