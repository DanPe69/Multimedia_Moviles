import 'package:flutter/material.dart';

class ListaParticipantes extends StatelessWidget {
  final List<String> participantes;
  final Function(int) onEliminar;

  const ListaParticipantes({
    super.key,
    required this.participantes,
    required this.onEliminar,
  });

  @override
  Widget build(BuildContext context) {
    if (participantes.isEmpty) {
      return const Center(
        child: Text(
          'Aún no hay participantes agregados.\n¡Empieza escribiendo algunos nombres!',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      itemCount: participantes.length,
      itemBuilder: (context, index) {
        return Card(
          color: const Color.fromARGB(255, 54, 27, 88),
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 98, 25),
                    Color.fromARGB(255, 233, 179, 32),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text(
              participantes[index],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 226, 226, 226),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.redAccent),
              onPressed: () => onEliminar(index),
            ),
          ),
        );
      },
    );
  }
}
