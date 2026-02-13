main() {
  var a = 10;
  final double b;
  const double c = 10;
  a = 20;
  b = 20;
  //c = 20;

  print(a);
  print(b); 
  print(c);

final List<String> personasFinal = ['Juan', 'Pedro', 'Maria'];
List<String> personasConst = const ['Ana', 'Luis', 'Carlos'];

personasFinal.add('Maria');
personasConst.add('Sofia');

print(personasFinal);
print(personasConst);


}