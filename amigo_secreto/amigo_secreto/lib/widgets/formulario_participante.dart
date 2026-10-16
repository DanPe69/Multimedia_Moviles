import 'package:flutter/material.dart';

class FormularioParticipante extends StatefulWidget {
  final Function(String) onAgregar;

  const FormularioParticipante({super.key, required this.onAgregar});

  @override
  State<FormularioParticipante> createState() => _FormularioParticipanteState();
}

class _FormularioParticipanteState extends State<FormularioParticipante> {
  final TextEditingController controlador = TextEditingController();

  void agregar() {
    String nombre = controlador.text.trim();

    if (nombre.isNotEmpty) {
      widget.onAgregar(nombre);
      controlador.clear();
    }
  }

  @override
  void dispose() {
    controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const moradoOscuro = Color.fromARGB(255, 54, 27, 88);
    const naranjaAccento = Color.fromARGB(255, 255, 98, 25);

    return Column(
      children: [
        TextField(
          controller: controlador,
          decoration: InputDecoration(
            labelText: 'Nombre del participante',
            labelStyle: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(Icons.person_add, color: moradoOscuro),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: moradoOscuro, width: 2),
            ),
          ),
          onSubmitted: (_) => agregar(),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: moradoOscuro,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
            onPressed: agregar,
            icon: const Icon(Icons.add, color: naranjaAccento),
            label: const Text(
              'Agregar participante',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
