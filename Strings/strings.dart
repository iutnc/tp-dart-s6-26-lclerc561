void main() {
  //Strings
  print("Hello world");
  String message = "Hello world";
  print(message);
  const hello = "Hello";
  const world = "World";
  print("$hello, $world");
  print((hello + ", " + world + " !").toUpperCase());
  print(message.substring(0, 5));
  const String messageConst = "Hello, World !";
  print(messageConst.length);

  const String welcome = ("Hello, World !");
  String resultat = welcome
      .toUpperCase()
      .replaceAll("E", "3")
      .replaceAll('L', '1')
      .replaceAll('O', '8');
  print(resultat);

  String welcome2 = "Hello World";
  final List<String> words = List.unmodifiable(welcome2.split(' '));
  print(words);

  String pwd = "";
  pwd.isEmpty ? print("Mot de passe manquant") : print("Mot de passe fourni");

  String email = "john@doe.com";
  print( 
    (email.contains("@") && email.contains("."))
        ? "L'email est valide"
        : "L'email n'est pas valide",
  );
}
