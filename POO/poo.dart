import 'classes/User.dart';

void main(){
  final johndoe = User("John", "Doe", "john@doe.com");

  johndoe.password = "Secret1234!";

  print(johndoe);
  johndoe.sayHello();

  print("--- Test d'authentification ---");
  bool isSuccess = johndoe.authenticate("Secret1234!");
  print("Test avec le bon mot de passe : $isSuccess");
  bool isFailure = johndoe.authenticate("1234Secret!");
  print("Test avec un mauvais mot de passe : $isFailure");
}