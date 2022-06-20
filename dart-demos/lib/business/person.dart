
class Person{
  String name;
  String email;
  String phone;

  Person(this.name,{this.email='', this.phone=''});

  toString(){
    return 'Person (name=$name,email=$email,phone=$phone)';
  }
}