
import 'person.dart';

class Employee extends Person{
  int empId;
  double salary;
  String department;
  Employee(this.empId,  String name,this.salary, {String email='',String phone='', this.department=''}) 
      : super(name,email:email, phone:phone);


  toString(){
    return ( 'Employee (id=$empId, name=$name,email=$email,phone=$phone, salary=$salary, department=$department)');
  }

}