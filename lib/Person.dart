class Person{
  String _name;
  int _mobile;
  String _gender;
  String _email;
  int _age;
  String _dob;

  Person(){
    print('Default constructor');
  }

  Person.initializer(this._name, this._gender, this._mobile, 
  this._email, this._age, this._dob){
    print('initializer');    
  }
  
  ///Return name of the person
  String get Name => _name;

  /// Set person's name
  set name(String value) => _name = value;

  int get mobile => _mobile;

  set mobile(int value) => _mobile = value;

  String get gender => _gender;

  set gender(String value) => _gender = value;

  String get email => _email;

  set email(String value) => _email = value;

  int get age => _age;

  set age(int value) => _age = value;

  String get dob => _dob;

  set dob(String value) => _dob = value; 

  void printIt(){
    print('Name: $_name Mobile: $_mobile Age: $_age Email: $_email Gender: $_gender DoB: $_dob');
  }

  /// Support the following operations:
  /// add - Addition
  /// subs - Substraction
  /// mult - Multiplication
  /// div - Division
  void easyCalc(double val1, double val2, {String operation}){
    double result;

    switch (operation) {
      case 'add':
        result = val1+val2;
        print('Adding $val1 + $val2 = ' + result.toString());
        break;      
      case 'subs':
        result = val1-val2;
        print('Substracting $val1 - $val2 = ' + result.toString());
        break;
      case 'mult':
        result = val1*val2;
        print('Multiplying $val1 times $val2 = ' + result.toString());
        break;        
      case 'div':
        result = val1/val2;
        print('Dividing $val1 div $val2 = ' + result.toString());
        break;
      default:
        print('Nothing to do here');
    }
  }
}

