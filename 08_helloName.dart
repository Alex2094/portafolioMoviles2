import 'dart:io';
void main() {
  print("Ingresa el nombre:");  
  String name = stdin.readLineSync()!;
  print('Hello, $name!');
}