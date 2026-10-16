import 'package:flutter/material.dart';

class FormularioParticipante extends StatefulWidget {
  final Function(String) onAgregar;

  const FormularioParticipante({
    super.key,
    required this.onAgregar,
  });

  @override
  State<FormularioParticipante> createState() => _FormularioParticipanteState();
}

class _FormularioParticipanteState extends State<FormularioParticipante> {
  final TextEditingController controlador = TextEditingController();

  void agregar() {
    String nombre = controlador.text.trim();

    if (nombre.isNotEmpty) {
      widget.onAgregar(nombre);
      controlador.clear(); // Limpia -> Caja de texto
    }
  }

  @override
  void dispose() {
    controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controlador,
          decoration: const InputDecoration(
            labelText: 'Nombre del participante',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person_add),
          ),
          onSubmitted: (_) => agregar(), // Agregar presionando Enter
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: agregar,
            icon: const Icon(Icons.add),
            label: const Text('Agregar participante', style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}