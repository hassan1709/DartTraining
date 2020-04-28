import 'package:dart_training/Person.dart';

class Employee extends Person{
  List<String> _roles;

  //Employee(name, gender, mobile, email, age, dob) : super.otherConstructor
  Employee(String name, String gender, int mobile, 
  String email, int age, String dob) :
    _roles = List<String>(),        
    super.initializer(name, gender, mobile, email, age, dob);
  

  List<String> get getRoles => _roles;

  set setRoles(List<String> roles) => _roles = roles;
  
  void addRole(String role){
    role != null && role.isNotEmpty ? _roles.add(role) : 
    print('Operation cannot be performed as value sent not valid');        
  }
  void remRole(String role){
    var index = _roles.indexOf(role);
    index != null && index >= 0 ? _roles.removeAt(index) : 
    print('Role $role not existing for the employee $Name');
  }
}