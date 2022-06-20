class Person {
  String name;
  String email;
  String phone;
  // Named parameter, here the sequence could be anything
  Person(this.name, {this.email = '', this.phone = 'black'});
  show(){
    print('Person (name=$name, email=$email, phone =$phone)');
  }
  toString(){
    return ('Person (name=$name, email=$email, phone =$phone)');
  }
}
