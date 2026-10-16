import 'dart:math';

Map<String, String> generarSorteo(List<String> participantes) {
  if (participantes.length < 2) {
    return {};
  }

  // Copia de los participantes para los amigos secretos
  List<String> receptores = List.from(participantes);
  final random = Random();

  bool esValido = false;

  // Mezclar hasta que nadie se regale a sí mismo
  while (!esValido) {
    receptores.shuffle(random);
    esValido = true;
    
    for (int i = 0; i < participantes.length; i++) {
      if (participantes[i] == receptores[i]) {
        esValido = false; // Si alguien se sacó a sí mismo -> repetimos mezcla
        break;
      }
    }
  }

  // Mapa con los resultados finales
  Map<String, String> resultados = {};
  for (int i = 0; i < participantes.length; i++) {
    resultados[participantes[i]] = receptores[i];
  }

  return resultados;
}