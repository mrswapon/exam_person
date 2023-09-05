//======================Main Function==================
void main() {
  List people = <Person>[
    Teacher('Babul', 'Mirdha', 5),
    Teacher('Isteak', 'Ahmmed', 10),
    Teacher('Arman', 'Hasan', 10),
    Student('Swapon', 'Ahmmed', 3.14),
    Student('Jannat', 'Akter', 4.14),
  ];

  for (var person in people) {
    if (person is Teacher) {
      (person as Teacher).display();
    } else if (person is Student) {
      (person as Student).show();
    }
  }
}

//======================Person Class==================

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  void show() {
    print('$firstName $lastName');
  }
}
//======================Teacher Class==================

class Teacher extends Person {
  int No_of_Publication;

  Teacher(String firstName, String lastName, this.No_of_Publication)
      : super(firstName, lastName);

  void display() {
    print('name : ' '$firstName $lastName, Publication: $No_of_Publication');
  }
}
//======================Student Class==================

class Student extends Person {
  double CGPA;

  Student(String firstName, String lastName, this.CGPA)
      : super(firstName, lastName);

  void show() {
    print('name : ' '$firstName $lastName, CGPA: $CGPA.');
  }
}
