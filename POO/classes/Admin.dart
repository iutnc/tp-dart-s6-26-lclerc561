import 'User.dart';

class Admin extends User {
  int _grade = 1;

  Admin(String firstname, String lastname, String email) : super(firstname, lastname, email);

  int get grade {
    return _grade;
  }
  set grade(int newGrade) {
    _grade = newGrade;
  }
}