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
          const Text(
            'Registra a los participantes',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 20),
          
          // Formulario para escribir nombres
          FormularioParticipante(onAgregar: onAgregar),
          
          const SizedBox(height: 20),
          
          Text(
            'Total participantes: ${participantes.length}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),

          // Lista que se expande hacia abajo
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