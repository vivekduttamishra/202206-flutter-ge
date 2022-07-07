

class User{
  late String name;
  late String token;
  late String email;
  late dynamic roles;

  User.fromMap(map){
    name=map['name'];
    token=map['token'];
    email=map['email'];
    roles=map['roles'];
  }

  toMap(){
    return {
      "name": name,
      "token":token,
      "roles":roles,
      "email":email,
    };
  }

}