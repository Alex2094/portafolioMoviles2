import 'dart:io';

void main() {
  bool continuar = true;
  
  while (continuar) {
    print('\n=== TABLA DE MULTIPLICAR ===');
    stdout.write('Ingrese un número (0 para salir): ');
    
    String? entrada = stdin.readLineSync();
    if (entrada == null || entrada.isEmpty) {
      print('Entrada inválida. Intente nuevamente.');
      continue;
    }
    
    int numero = int.tryParse(entrada) ?? 0;
    
    if (numero == 0) {
      continuar = false;
      print('Programa finalizado.');
    } else {
      imprimirTablaMultiplicar(numero);
    }
  }
}

void imprimirTablaMultiplicar(int numero) {
  print('\n=== Tabla de multiplicar del $numero ===');
  print('Iteraciones del 1 al 50:');
  
  for (int i = 1; i <= 50; i++) {
    int resultado = numero * i;
    print('$numero × $i = $resultado');
  }
}