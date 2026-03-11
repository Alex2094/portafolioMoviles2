import 'dart:io';
import 'dart:collection';

// VARIABLES GLOBALES
// Cola para tickets
Queue<String> colaTickets = Queue<String>();

// Pila para acciones del técnico
List<String> pilaAcciones = [];

// FUNCIONES

void mostrarMenu() {
  print("\n===== SISTEMA DE GESTIÓN DE TICKETS =====");
  print("1. Agregar ticket");
  print("2. Atender ticket");
  print("3. Registrar acción del técnico");
  print("4. Deshacer última acción");
  print("5. Mostrar estado del sistema");
  print("6. Salir");
  stdout.write("Seleccione una opción: ");
}

void agregarTicket() {
  stdout.write("Ingrese el nombre o número del ticket: ");
  String? ticket = stdin.readLineSync();

  if (ticket != null && ticket.isNotEmpty) {
    colaTickets.add(ticket); // enqueue
    print("Ticket agregado correctamente.");
  } else {
    print("Entrada inválida.");
  }
}

void atenderTicket() {
  if (colaTickets.isNotEmpty) {
    String ticketAtendido = colaTickets.removeFirst(); // dequeue
    print("Atendiendo ticket: $ticketAtendido");
  } else {
    print("No hay tickets pendientes.");
  }
}

void registrarAccion() {
  stdout.write("Ingrese la acción realizada por el técnico: ");
  String? accion = stdin.readLineSync();

  if (accion != null && accion.isNotEmpty) {
    pilaAcciones.add(accion); // push
    print("Acción registrada.");
  } else {
    print("Entrada inválida.");
  }
}

void deshacerAccion() {
  if (pilaAcciones.isNotEmpty) {
    String accionEliminada = pilaAcciones.removeLast(); // pop
    print("Se deshizo la acción: $accionEliminada");
  } else {
    print("No hay acciones para deshacer.");
  }
}

void mostrarEstado() {
  print("\n----- ESTADO DEL SISTEMA -----");

  print("\nTickets pendientes (Cola):");
  if (colaTickets.isEmpty) {
    print("No hay tickets en espera.");
  } else {
    for (var ticket in colaTickets) {
      print("- $ticket");
    }
  }

  print("\nAcciones del técnico (Pila):");
  if (pilaAcciones.isEmpty) {
    print("No hay acciones registradas.");
  } else {
    for (var accion in pilaAcciones) {
      print("- $accion");
    }
  }
}

// FUNCIÓN PRINCIPAL

void main() {
  int opcion = 0;

  do {
    mostrarMenu();
    String? input = stdin.readLineSync();

    if (input != null) {
      opcion = int.tryParse(input) ?? 0;
    } else {
      opcion = 0;
    }

    switch (opcion) {
      case 1:
        agregarTicket();
        break;
      case 2:
        atenderTicket();
        break;
      case 3:
        registrarAccion();
        break;
      case 4:
        deshacerAccion();
        break;
      case 5:
        mostrarEstado();
        break;
      case 6:
        print("Saliendo del sistema...");
        break;
      default:
        print("Opción inválida. Intente nuevamente.");
    }
  } while (opcion != 6);
}
