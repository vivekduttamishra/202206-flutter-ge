

class FormData{

  final Map<String,dynamic> data= <String,dynamic>{};

  save(String key) {
    void f(String? value) {
      data[key] = value;
    }
    return f;
  }

}