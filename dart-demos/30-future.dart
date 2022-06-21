const books ={
  111: "The accursed God",
  222: "Freeedom at midnight",
  333: "Rashmirathi",
};

// basic blocking code
String getBookById(id){
  //assum searching the datasource takes some time
  if(books.containsKey(id))
    return books[id] ?? "";
  
  throw new Exception('Invalid ID: $id');

}


// basic blocking code
Future<String> getBookByIdAsync(id){
  return Future.delayed(Duration(seconds: 2), () => getBookById(id));

}

void main(){
  var result = getBookByIdAsync(111);
  print(result); // 2 seconds has not passed yet

  result.then((title) => print(title));
  print('Please wait while we get your book');

  var ids= [111, 444, 222];
  for(var id in ids){
    print('Seaching for book with id: $id');

    getBookByIdAsync(id)
      .then((title) => print('$id => $title'))
      .catchError((error) => print('Error with $id: $error'));
  }
}