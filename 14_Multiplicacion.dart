import 'dart:io';

void main() {
  Map<String, int> tablaConversion = {
    'A+': 10,
    'A': 9,
    'B': 8,
    'C': 7,
    'D': 6,
    'F': 5
  };
  
  List<String> calificacionesValidas = ['A+', 'A', 'B', 'C', 'D', 'F'];
  
  print('=== CONVERSOR DE CALIFICACIONES ===');
  print('Sistema Americano → Sistema Mexicano');
  print('Calificaciones válidas: A+, A, B, C, D, F');
  
  bool calificacionValida = false;
  String? calificacionAmericana;
  
  while (!calificacionValida) {
    stdout.write('\nIngrese la calificación en sistema americano: ');
    calificacionAmericana = stdin.readLineSync()?.toUpperCase();
    
    if (calificacionAmericana != null && 
        calificacionesValidas.contains(calificacionAmericana)) {
      calificacionValida = true;
    } else {
      print('Calificación inválida. Por favor ingrese una de las siguientes:');
      print(calificacionesValidas.join(', '));
    }
  }
  
  int calificacionMexicana = tablaConversion[calificacionAmericana!]!;
  
  print('\n=== RESULTADO DE CONVERSIÓN ===');
  print('Calificación americana: $calificacionAmericana');
  print('Calificación mexicana: $calificacionMexicana');
  print('================================');
}