main(){

  var list1 = <Object> [2,3,4,5];
  //print(list1[4]);
  //list1.insert(0, 200);
  list1.insert(5, 200); // insert can be from 0 to length of list, outside that it will not work
  print(list1);

  list1.removeAt(2);
  print(list1);

  //list1.removeAt(40); // removeAt can be from 0 to length of list, outside that it will not work
  print(list1);

}
