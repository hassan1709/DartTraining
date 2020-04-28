import 'package:dart_training/Employer.dart';

class PDCEmployer extends Employer{
  PDCEmployer(String name, String gender, int mobile, String email, int age, String dob) : super(name, gender, mobile, email, age, dob);

  @override
  void fireStaff() {
    print('I am firing you');
  }

  @override
  double getRevenue() {
    print('Revenue was high');
    return 1000000;
  }

  ///Hiring people
  @override
  void hireStaff() {
    print('You are hired');
  }

  @override
  void paySalaries() {
    print('All staff have been paid');
  }
  
}