import 'package:dart_training/Employee.dart';
import 'package:dart_training/PDCEmployer.dart';
//import 'package:dart_training/dart_training.dart' as dart_training;
import 'package:dart_training/person.dart';

void main(List<String> arguments) {
  // var edad = 20;
  // var varInt = 0;
  // var varDouble = 1.5;
  // var varString = 'Hassan';
  // var varBool = true;
  //List<String> list;
  //Set<int> set;
  //Map<int, dynamic> map;
  // final String personName = 'Fulano de Tal'; //it's available only when invoked
  // const personAge = 32; //it's available since declared
  var customer = Person();
  customer.name = 'Pedro';
  customer.mobile = 315477841;
  customer.gender ='M';
  customer.age = 19;
  customer.email = 'mailA';
  customer.dob = '12/87/9987';
  customer.printIt();

  var customer2 = Person.initializer('Juan', 'otro', 987445, 'mailB', 38, '5/7/9987');
  customer2.printIt();
  customer2.easyCalc(6, 3, operation:'div');

  var emp = Employee('Pablo', 'F', 7887774, 'mailC', 25, '12/2/1987');
  emp.addRole('Manager');
  emp.addRole('Supervisor');
  emp.addRole('SalesPerson');
  emp.addRole('Driver');
  print(emp.getRoles.toString());
  emp.remRole('driver');
  print(emp.getRoles.toString());

  var pdc = PDCEmployer('Zach Morris', 'M', 99887744, 'zach@xyz.com', 30, '4/7/1870');
  pdc.fireStaff();
  pdc.hireStaff();
  pdc.paySalaries();
  pdc.easyCalc(50, pdc.getRevenue(), operation:'mult');
  // map = {9:'Nico', 11:'Kathe', 37:'Mayo', 39:'Hassan'};
  // map[65]='Abu';
  // map[105]=false;
  // map.addAll(map);

  // //list = new List(10);
  // list = ['Nico','Maryu', 'Has', 'BayMax'];
  // list.add('Abuela');
  // set = Set.from([2,5,15,999]);
  // set.add(111);
  // set.remove(5);

  // if (varString.isEmpty) {
  //   print('Nothing to print');
  // } else {
  //   print('$varString' ' Hammad');
  // }

  // List colours = ['Azul', 'Yelow', 'Fuctia'];
  // colours.forEach((c){
  //   print(c);
  // });
    
  // print(varInt);
  // print(varDouble);
  // print(varBool);
  // print('Hello world: ${dart_training.calculate()}!');
  // print(list);
  // print(set);
  // print('Edad y nombre de los ' + map.length.toString() + 
  // ' integrantes de la familia = ' + map.toString());
  // print('Name:' + personName);
  // print('Age: ' + personAge.toString());
  
  /*el signo de interrogacion equivale a if. 
    los dos puntos equivale a else.
    la condicion es lo que esta a la izquierda del if (?)
    si la condicion se cumple (si es true), haga lo que esta a la derecha del ?
    de lo contrario haga lo que esta a la derecha de : */
  //edad >= 18 ? print('Adulto') : print('Aun nino');

  var ages = [33,15,27,40,22];
  var avg;
  var total = 0;
  for (var age in ages) {
    total += age;
  }
  avg = total/ages.length;
  ages.sort();
  print('Edades ordenadas  $ages');
  print('La edad menor es: ${ages.first}');
  print('La edad mayor es: ${ages.last}');
  print('La edad promedio es: $avg');
}
