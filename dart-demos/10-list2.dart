main(){

  // Generic -> parameterised type e.g. List<int> 
  List<int> numbers = [2,3,4,5,9];
  List<String> names = ['India', 'USA', 'UK', 'France'];

  print(numbers);

  for(var name in names)
    print(name);


  // below will be implicitly casted to a list of numbers i.e. List<num>
  // num -> generic superclass for all numbers
  var list = [2, 4, 5.6, 6, 9];

  print(list);

  // after adding a string to the mix it becomes a List of Objects
  // Object class is a superclass for all Dart classes
  // All dart classes (predefined or user defined are sub classes of Object class)
  var list2 = [2, 4, 5.6, 'hello', 6, 9];

  list2.add(true);
  print(list2);

}
