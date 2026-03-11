import 'dart:convert';
import 'package:crypto/crypto.dart';

class User{
  String firstname;
  String lastname;
  String email;
  String _password = "";
  String _hash = "";

  User(this.firstname, this.lastname, this.email);

  set password(String newPassword) {
    _password = newPassword; 
    var bytes = utf8.encode(newPassword);
    var digest = sha256.convert(bytes);
    _hash = digest.toString();
  }

  @override
  String toString() {
    return 'User(firstname: $firstname, lastname: $lastname, email: $email, password: *****)';
  }

  void sayHello(){
    print("Hello, I'm $firstname $lastname !");
  }

  bool authenticate(String passwordToTest) {
    var bytes = utf8.encode(passwordToTest);
    var digest = sha256.convert(bytes);
    String hashToTest = digest.toString();
    return hashToTest == _hash;
  }
}