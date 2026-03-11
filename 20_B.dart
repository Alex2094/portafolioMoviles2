import 'dart:io';

int factorial(int n){
  int f = 1;
    for(int c = n; c > 1; c--){
    f = f * c; 
  }

  return f;
}

main(){
  int n = 0;

  stdout.writeln('Ingrese un número para calcular su factorial: ');
  n = int.parse(stdin.readLineSync()!);

  int f = factorial(n); 
  stdout.writeln('El factorial de $n es:  $f');

}
