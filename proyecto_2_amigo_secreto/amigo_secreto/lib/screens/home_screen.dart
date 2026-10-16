import 'package:flutter/material.dart';
import '../models/amigo_secreto.dart';
import 'participantes_screen.dart';
import 'sorteo_screen.dart';
import 'resultados_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> participantes = [];
  Map<String, String> resultados = {};
  int indiceActual = 0;

  void agregarParticipante(String nombre) {
    // Evitamos nombres duplicados (ignorando mayúsculas/minúsculas)
    if (participantes.any((p) => p.toLowerCase() == nombre.toLowerCase())) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ese nombre ya existe en la lista')),
      );
      return;
    }

    setState(() {
      participantes.add(nombre);
      resultados.clear(); // Si agregan alguien nuevo, borramos resultados anteriores
    });
  }

  void eliminarParticipante(int indice) {
    setState(() {
      participantes.removeAt(indice);
      resultados.clear();
    });
  }

  void realizarSorteo() {
    if (participantes.length < 2) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Necesitas al menos 2 participantes para sortear')),
      );
      return;
    }

    setState(() {
      resultados = generarSorteo(participantes);
      indiceActual = 2; // Pestaña de Resultados
    });
  }

  @override
  Widget build(BuildContext context) {
    // Lista de pantallas que controlará el BottomNavigationBar
    final List<Widget> pantallas = [
      ParticipantesScreen(
        participantes: participantes,
        onAgregar: agregarParticipante,
        onEliminar: eliminarParticipante,
      ),
      SorteoScreen(
        cantidad: participantes.length,
        onSortear: realizarSorteo,
      ),
      ResultadosScreen(resultados: resultados),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Amigo Secreto 🎁'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: pantallas[indiceActual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceActual,
        onTap: (indice) {
          setState(() {
            indiceActual = indice;
          });
        },
        selectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Participantes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Sorteo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Resultados',
          ),
        ],
      ),
    );
  }
}