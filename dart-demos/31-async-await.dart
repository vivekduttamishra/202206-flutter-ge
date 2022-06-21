
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

 Future<String> getBookByIdAsync(id) {
     
     return Future.delayed(
                  Duration(seconds:2), 
                  ()=> getBookById(id),
                );

}


_printBookInfoAsync(id){

    getBookByIdAsync(id)
        .then( (title)=> print('$id=>$title'))                //on successful completion
        .catchError((error)=>print(error)); //on error 
  

}

printBookInfoAsync(id) async{

  try{
    // the result will come in future
    var result = await getBookByIdAsync(id);
    //I will print the result in future
    print('$id=>$result');

  }catch(error){
    print(error);
  }
    
  //since this function will do a lot for work in future, it actually implicitly returns a future
   

}


void main(){

  var ids=[111,444,222];

  for(var id in ids){

    print('searching for book with id : $id');

    printBookInfoAsync(id);

  }

}