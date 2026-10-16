import 'package:flutter/material.dart';

import '../widgets/formulario_participante.dart';
import '../widgets/lista_participantes.dart';

class ParticipantesScreen extends StatelessWidget {
  final List<String> participantes;
  final Function(String) onAgregar;
  final Function(int) onEliminar;

  const ParticipantesScreen({
    super.key,
    required this.participantes,
    required this.onAgregar,
    required this.onEliminar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/693/693407.png',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),

          const Text(
            'Registra a los participantes',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 54, 27, 88),
            ),
          ),
          const SizedBox(height: 20),

          FormularioParticipante(onAgregar: onAgregar),

          const SizedBox(height: 20),

          Text(
            'Total participantes: ${participantes.length}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListaParticipantes(
              participantes: participantes,
              onEliminar: onEliminar,
            ),
          ),
        ],
      ),
    );
  }
}
