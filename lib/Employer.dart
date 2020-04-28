import 'package:dart_training/person.dart';

abstract class Employer extends Person
{
  Employer(String name, String gender, int mobile, 
  String email, int age, String dob) :
    super.initializer(name, gender, mobile, email, age, dob);

  void paySalaries();
  void hireStaff();
  void fireStaff();
  double getRevenue();
}