
class Book {

  late String id;
  late String isbn;
  late String title;
  late String? author;
  late String description;
  late String cover;
  late int price;
  late double rating;
  late String? authorId;

  Book({
          required this.id,
          required this.isbn, 
          required this.title, 
          required this.author, 
          required this.description,
          required this.cover,
          required this.price,
          required this.rating,
          });

  Book.fromMap( map){
    id= map['id']??map['isbn'];
    isbn=map['isbn'];
    title=map['title'];
    author=map['author']??'';
    authorId=map['authorId'];
    description=map['description']??'';
    cover=map['cover']??'';
    price=int.parse(map['price'].toString());
    rating=double.tryParse(map['rating'].toString())??1;
  }

  toMap(){
    return <String,dynamic>{
      "id": id,
      "isbn":isbn,
      "title":title,
      "author":author??'',
      "authorId":authorId??'',
      "description":description,
      "cover":cover,
      "price":price,
      "rating":rating,
    };
  }


}