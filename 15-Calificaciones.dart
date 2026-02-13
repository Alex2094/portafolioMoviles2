import 'dart:io';

void main() {
  print('=== SUMA DE DÍGITOS ===');
  print('Ingrese números para sumar sus dígitos.');
  print('Ingrese 0 para terminar y ver el resultado.');
  
  int sumaTotal = 0;
  
  while (true) {
    stdout.write('\nIngrese un número: ');
    String? entrada = stdin.readLineSync();
    
    if (entrada == null || entrada.isEmpty) {
      print('Entrada inválida. Intente nuevamente.');
      continue;
    }
    
    int numero = int.tryParse(entrada) ?? 0;
    
    if (numero == 0) {
      break;
    }
    
    int sumaDigitos = sumarDigitos(numero);
    sumaTotal += sumaDigitos;
    
    print('Suma de dígitos de $numero: $sumaDigitos');
    print('Suma acumulada: $sumaTotal');
  }
  
  print('\n=== RESULTADO FINAL ===');
  print('La suma total de todos los dígitos es: $sumaTotal');
}

int sumarDigitos(int numero) {
  int suma = 0;
  int numAbsoluto = numero.abs();
  
  while (numAbsoluto > 0) {
    suma += numAbsoluto % 10;
    numAbsoluto ~/= 10;
  }
  
  // Si el número era 0 o negativo
  if (suma == 0 && numero == 0) {
    return 0;
  }
  
  return suma;
}