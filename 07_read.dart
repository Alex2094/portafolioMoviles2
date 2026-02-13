import 'dart:io';

void  main() {
  stdout.writeln("Ingresa tu nombre:");
  String? name = stdin.readLineSync();
  stdout.writeln("Hola, $name!");
}