
const books={
  111: "The Accursed God",
  222: "Freedom at Midnight",
  333: "Rashmirathi",
};

//basic  blocking code

String getBookById(id){

  if(books.containsKey(id))
    return books[id] ?? "";
  else
    throw new Exception("Invalid ID : $id");

}

//what if the above code takes along time run. let us simulate a delay

Future<String> getBookByIdAsync(id){
     
     return Future.delayed(
                  Duration(seconds:2), 
                  ()=> getBookById(id),
                );

}


void main(){

  var result = getBookByIdAsync(111);

  print(result); //2 second has not passed yet.

  result.then(  //will work after 2 seconds 
    
    (title) =>print('got the book: $title')
    
    );

  print('please wait while we get your book');

}