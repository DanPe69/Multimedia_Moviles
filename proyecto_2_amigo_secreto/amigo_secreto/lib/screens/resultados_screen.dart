import 'package:flutter/material.dart';
import '../widgets/tarjeta_resultado.dart';

class ResultadosScreen extends StatelessWidget {
  final Map<String, String> resultados;

  const ResultadosScreen({
    super.key,
    required this.resultados,
  });

  @override
  Widget build(BuildContext context) {
    if (resultados.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Todavía no se ha realizado ningún sorteo.\nVe a la pestaña de Sorteo para comenzar.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Resultados del Sorteo 🎯',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 15),
        ...resultados.entries.map((resultado) {
          return TarjetaResultado(
            participante: resultado.key,
            amigo: resultado.value,
          );
        }),
      ],
    );
  }
}