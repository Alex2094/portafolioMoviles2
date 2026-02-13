import 'dart:io';
void main() {
  print("Ingresa el primer número:");
  int a = int.parse(stdin.readLineSync()!);
 
  print("Ingresa el segundo número:");
  int b = int.parse(stdin.readLineSync()!);

  int n = a + b;
  print("La suma es: $n");
}