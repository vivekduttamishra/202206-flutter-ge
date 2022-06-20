void main(){

  var names=['India', 'USA', 'uk','France','Germany'];

  

  //what if I need all names to be converted to upper case.

  var namesUC = names.map((name)=>name.toUpperCase());

  print(names);
  print(namesUC);


 //can I convert a list of string to a list of int may be length of each name 

 var lengths= names.map((n)=>n.length);

 print(lengths);


 //sort the names based on the alphabetic sequence in place.
  names.sort();

  print(names);

  //sort the names based on the length

  names.sort((n1,n2)=>n1.length-n2.length);

  print(names);




}