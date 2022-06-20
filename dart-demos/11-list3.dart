main(){

  var list = [2,3,4];
  List<Object> list2 = [2,3,4];

  var list3 = <num> [2,3,4,5];

  // list1.add('String'); // this will show error as list is implecitly detected as int type
  list2.add('String');
  print(list2);

}
