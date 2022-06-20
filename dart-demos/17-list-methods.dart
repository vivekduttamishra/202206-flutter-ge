

void main(){
  List<num> numbers = [];

  for(int i=0; i< 100; i++){
    numbers.add(i);
  }
  numbers.shuffle(); //randomise int

  // how to print all the values of list without using explicit loop
  num sum =0;
  numbers.forEach((number) => sum+= number);

  print('sum is $sum');

  print(numbers);

  // where() returns a Iterable and NOT a List 
// Iterable is something that can work with for-each 
// Like list it also contains values 
// Unlike list the values may not be stored but a computed sequence. 
// Iterable is like a list but not a real list 
// You may convert an iterable to  List by calling the toList method of iterable 
  var filteredNum = numbers.where((x) => x%3==0 || x%5==0);

  print('all numbers divisible by 3 or 5 are: ${filteredNum.toList()}');
}