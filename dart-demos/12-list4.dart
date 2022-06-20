void main(){

  var list1 = [2,3,4];
 
  list1.insert(1, 100);

  print(list1);

  list1.removeAt(2); //removes at index#2 --> 3
  list1.remove(4); //remove the value 4 if it exists

  print(list1);

}