enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  Employee(this._name, this._baseSalary, this._skills, this._address, this._yearsOfExperience);

  Employee.mobileDeveloper(String name, Address address, int yearsOfExperience)
  : this(name, 40000, [Skill.FLUTTER, Skill.DART], address, yearsOfExperience);

  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;
  String get skillsText => skills.map((s) => s.name).join(", ");

  double calculateSalary(){
    double salary = _baseSalary;
    salary += yearsOfExperience * 2000;
    for (Skill skill in _skills) {
      if (skill == Skill.FLUTTER) {
        salary += 5000;
      } else if (skill == Skill.DART) {
        salary += 3000;
      } else if(skill == Skill.OTHER){
        salary += 1000;   
      }
    }
    return salary;
  }


  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
    print('Skills: ${skillsText}');
    print('Experience: $yearsOfExperience years');
    print('Address: $address');
    print('Salary: \$${calculateSalary()}\n');
  }
}

class Address{
  final String _street;
  final String _city;
  final String _zipCode;

  const Address(this._street, this._city, this._zipCode);

  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;

  @override
  String toString() {
    // TODO: implement toString
    return ('$_street, $_city $_zipCode');
  }
}



void main() {
  var emp1 = Employee('Sokea', 40000, [Skill.FLUTTER,Skill.OTHER], Address("st 6A", "Phnom Pneh", "1000"),3);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 45000, [Skill.FLUTTER,Skill.DART, Skill.OTHER], Address("st 6A", "Phnom Pneh", "2000"), 10);
  emp2.printDetails();

  var emp3 = Employee.mobileDeveloper('Namkea', const Address("st 6A", "Kampong Cham", "7777"), 2,);
  emp3.printDetails();
}


