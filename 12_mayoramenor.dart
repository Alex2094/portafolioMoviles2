import 'dart:io';
import 'dart:math';

void main() {
  bool continuar = true;
  
  while (continuar) {
    print('\n=== CALCULADORA DE ÁREAS Y VOLÚMENES ===');
    print('1. Calcular área');
    print('2. Calcular volumen');
    print('3. Salir');
    print('==========================================');
    
    stdout.write('Seleccione una opción (1-3): ');
    String? opcion = stdin.readLineSync();
    
    switch (opcion) {
      case '1':
        calcularArea();
        break;
      case '2':
        calcularVolumen();
        break;
      case '3':
        continuar = false;
        print('¡Hasta luego!');
        break;
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  }
}

void calcularArea() {
  print('\n=== CÁLCULO DE ÁREAS ===');
  print('1. Círculo');
  print('2. Triángulo');
  print('3. Rectángulo');
  print('4. Regresar');
  
  stdout.write('Seleccione una figura (1-4): ');
  String? figura = stdin.readLineSync();
  
  switch (figura) {
    case '1':
      calcularAreaCirculo();
      break;
    case '2':
      calcularAreaTriangulo();
      break;
    case '3':
      calcularAreaRectangulo();
      break;
    case '4':
      return;
    default:
      print('Opción inválida.');
  }
}

void calcularVolumen() {
  print('\n=== CÁLCULO DE VOLÚMENES ===');
  print('1. Esfera');
  print('2. Pirámide');
  print('3. Cubo');
  print('4. Regresar');
  
  stdout.write('Seleccione una figura (1-4): ');
  String? figura = stdin.readLineSync();
  
  switch (figura) {
    case '1':
      calcularVolumenEsfera();
      break;
    case '2':
      calcularVolumenPiramide();
      break;
    case '3':
      calcularVolumenCubo();
      break;
    case '4':
      return;
    default:
      print('Opción inválida.');
  }
}

void calcularAreaCirculo() {
  stdout.write('Ingrese el radio del círculo: ');
  String? entrada = stdin.readLineSync();
  if (entrada == null || double.tryParse(entrada) == null) {
    print('Error: Debe ingresar un número válido.');
    return;
  }
  double radio = double.parse(entrada);
  double area = pi * pow(radio, 2);
  print('El área del círculo es: ${area.toStringAsFixed(2)}');
}

void calcularAreaTriangulo() {
  stdout.write('Ingrese la base del triángulo: ');
  String? entradaBase = stdin.readLineSync();
  stdout.write('Ingrese la altura del triángulo: ');
  String? entradaAltura = stdin.readLineSync();
  
  if (entradaBase == null || double.tryParse(entradaBase) == null ||
      entradaAltura == null || double.tryParse(entradaAltura) == null) {
    print('Error: Debe ingresar números válidos.');
    return;
  }
  
  double base = double.parse(entradaBase);
  double altura = double.parse(entradaAltura);
  double area = (base * altura) / 2;
  print('El área del triángulo es: ${area.toStringAsFixed(2)}');
}

void calcularAreaRectangulo() {
  stdout.write('Ingrese el largo del rectángulo: ');
  String? entradaLargo = stdin.readLineSync();
  stdout.write('Ingrese el ancho del rectángulo: ');
  String? entradaAncho = stdin.readLineSync();
  
  if (entradaLargo == null || double.tryParse(entradaLargo) == null ||
      entradaAncho == null || double.tryParse(entradaAncho) == null) {
    print('Error: Debe ingresar números válidos.');
    return;
  }
  
  double largo = double.parse(entradaLargo);
  double ancho = double.parse(entradaAncho);
  double area = largo * ancho;
  print('El área del rectángulo es: ${area.toStringAsFixed(2)}');
}

void calcularVolumenEsfera() {
  stdout.write('Ingrese el radio de la esfera: ');
  String? entrada = stdin.readLineSync();
  if (entrada == null || double.tryParse(entrada) == null) {
    print('Error: Debe ingresar un número válido.');
    return;
  }
  double radio = double.parse(entrada);
  double volumen = (4/3) * pi * pow(radio, 3);
  print('El volumen de la esfera es: ${volumen.toStringAsFixed(2)}');
}

void calcularVolumenPiramide() {
  stdout.write('Ingrese el área de la base de la pirámide: ');
  String? entradaArea = stdin.readLineSync();
  stdout.write('Ingrese la altura de la pirámide: ');
  String? entradaAltura = stdin.readLineSync();
  
  if (entradaArea == null || double.tryParse(entradaArea) == null ||
      entradaAltura == null || double.tryParse(entradaAltura) == null) {
    print('Error: Debe ingresar números válidos.');
    return;
  }
  
  double areaBase = double.parse(entradaArea);
  double altura = double.parse(entradaAltura);
  double volumen = (areaBase * altura) / 3;
  print('El volumen de la pirámide es: ${volumen.toStringAsFixed(2)}');
}

void calcularVolumenCubo() {
  stdout.write('Ingrese la longitud de la arista del cubo: ');
  String? entrada = stdin.readLineSync();
  if (entrada == null || double.tryParse(entrada) == null) {
    print('Error: Debe ingresar un número válido.');
    return;
  }
  double arista = double.parse(entrada);
  double volumen = pow(arista, 3).toDouble();
  print('El volumen del cubo es: ${volumen.toStringAsFixed(2)}');
}