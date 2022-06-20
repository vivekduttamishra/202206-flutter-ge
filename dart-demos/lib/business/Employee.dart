import 'Person.dart';

class Employee extends Person{
  int empId;
  double salary;
  String department;
  Employee(this.empId, String name, this.salary, {String email = '', String phone = 'black', this.department = ''}): super(name, email:email, phone:phone);

  // show(){
  //       print('Employee (empid: $empId, name=$name, email=$email, phone =$phone, salart = $salary, department= $department)');
  // }

  toString(){
        return('Employee (empid: $empId, name=$name, email=$email, phone =$phone, salart = $salary, department= $department)');
  }
}
