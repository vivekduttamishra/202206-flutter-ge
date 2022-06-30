mixin Validations{

  bool isValidEmail(String value){
    var i= value.indexOf('@');
    var i2=value.lastIndexOf('@');
    var d=value.lastIndexOf('.');
    var x=value.length;

    return      i>2     //threse should be at least 2 chars before @
            && i==i2    //there should be only one @
            && d> i+2   // there should be a dot after @ and two char
            && x>d+1;   //there should be a tld of at least 2 length
  }

  bool isValidPassword(String value){
    return value.length>4;
  }
}

mixin Reporters{
  void report(value){
    print(value);
  }
}

class MyScreen with Validations, Reporters
{
    void validate(email, password){
      int error=0;
      if(!isValidEmail(email)){
            report('invalid eamil');
            error++;
      }
      if(!isValidPassword(password))
      {
          report('invalid password');
          error++;
      }
      if(error==0){
        report('validation success');
      }
          
    }
}

void main(){

  var screen =MyScreen();

  screen.validate('vivek@vnc.in','password');
}