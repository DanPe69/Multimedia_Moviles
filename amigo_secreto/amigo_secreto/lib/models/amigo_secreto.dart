import 'dart:math';

Map<String, String> generarSorteo(List<String> participantes) {
  if (participantes.length < 2) {
    return {};
  }

  List<String> receptores = List.from(participantes);
  final random = Random();

  bool esValido = false;

  while (!esValido) {
    receptores.shuffle(random);
    esValido = true;

    for (int i = 0; i < participantes.length; i++) {
      if (participantes[i] == receptores[i]) {
        esValido = false;
        break;
      }
    }
  }

  Map<String, String> resultados = {};
  for (int i = 0; i < participantes.length; i++) {
    resultados[participantes[i]] = receptores[i];
  }

  return resultados;
}
