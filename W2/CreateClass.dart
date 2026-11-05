class Person{
  String firstName;
  String lastName;
  
  Person({required this.firstName, required this.lastName}){}
  
  String getFullName(){
    return ("${firstName} ${lastName}");
  }
  
 void walk(String way) {
    print("$lastName walks $way");
  }

  void talk(String talk){
    print("$lastName $talk");
  }
}
void main(){
  Person p1 = Person(firstName: "Santa", lastName: "Pillar");
  Person p2 = Person(firstName: "Seng", lastName: "Namkea");

  p1.lastName = "ronan the best";
  print(p1.getFullName());
  print(p2.getFullName());

  p1.walk("to the park");
  p2.talk("taking in the class");
}