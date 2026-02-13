main(){
  /*int a = 10;
  double b = 3.14;
  int? c; //variable que puede ser nula
  late int d; //variable que se inicializa despues
  d = 20;

  print(a);
  print(b);
  print(c); 
  print(d);
  print(a + b);

// cadenas de texto
  String nombre = 'Tony';
  String apellido = "Stark";
  String apellidoRandom = 'O\'Connor';
  String? cadenaVacia;
  String nombreCompleto = '$nombre $apellido';
  String multilinea = 
  ''' 
Hola mundo
    Como estas? $nombre $apellido
    no me quiero ir señor $apellido
''';

  print(nombre);
  print(apellido);
  print(apellidoRandom);
  print(cadenaVacia);
  print(nombreCompleto);
  print(multilinea);
*/
  //Boloeanos
  bool isActive = true;
  bool isNotActive = !isActive;
  print(isActive);
  print(isNotActive);

// Arrays
  var general = ['lex luthor', 'Red Skull', 'Doom', 1, true, 3.14];
  List<String> villanos = ['lex luthor', 'Red Skull', 'Doom'];
  villanos[0] = 'Bizarro';
  print(general);
  print(villanos);
  villanos.add('Siniestro');
  villanos.add('Siniestro');
  villanos.add('Siniestro');
  villanos.add('Siniestro');
  print(villanos);

//Sets
  var villanosSet = {'lex luthor', 'Red Skull', 'Doom'};
  Set<String> villanosSetString = {'lex luthor', 'Red Skull', 'Doom'};
  print(villanosSet);
  print(villanosSetString);
  villanosSetString.add('Siniestro');
  villanosSetString.add('Siniestro');
  villanosSetString.add('Siniestro');
  villanosSetString.add('Siniestro');
  print(villanosSetString);
  var villanosSet2 = villanos.toSet();
  print(villanosSet2.toList());

//Maps
  var iroman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'edad': 40
    };
  
  Map<String, dynamic> warmachine = {
    'nombre': 'Rhodey Rhodes',
    'poder': 'Tactico y tecnologia',
    'edad': 38
    };
 
  Map <String, dynamic> capitanAmerica = Map();
  //capitanAmerica['nombre'] = 'Steve';
  capitanAmerica.addAll({
    'nombre': 'Steve Rogers',
    'poder ': 'Fuerza, agilidad y resistencia',
    'edad ': 102,
  });

  capitanAmerica.addAll(iroman);
  print(iroman);
  print(warmachine);
  print(iroman['nombre']);
  print(warmachine['noombre']);
}  
