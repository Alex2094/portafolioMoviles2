import 'dart:io';

void main() {
  print("Ingresa tu nombre");
  String name = stdin.readLineSync()!;

  print("Ingresa el segundo nombre");
  String middlena = stdin.readLineSync()!;

  print("Ingresa tu apellido");
  String lastname = stdin.readLineSync()!;

  print("Hi, $name, $middlena $lastname,");
}