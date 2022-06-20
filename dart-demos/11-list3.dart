void main(){

  var list1 = [2,3,4];
  List<Object> list2 = [2,3,4];

  var list3= <num> [2,3,4];

  //list1.add('String');  //can't add string to List<int>
  //list1.add(4.5);  //can't add double to List<int>

  list2.add(4.5); //can add anything to List<Object>
  list2.add('String'); //can add anything to List<Object>

  list3.add(4.5); //can add any num to List<num>
  //list3.add('String'); //can't add String to List<num>

  print(list1);

}