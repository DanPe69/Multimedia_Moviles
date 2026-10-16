import 'package:flutter/material.dart';

import 'widgets/mi_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //BARRA SUPERIOR
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {}, //Parte 1. leading
            icon: const Icon(Icons.ac_unit),
          ),

          title: const Text("Hola"), //Parte 2. title

          actions: <Widget>[
            //Parte 3. actions
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarms_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarms_outlined),
            ),
          ],
        ),

        // CONTENIDO PRINCIPAL
        //body: Center(child: MiWidget()),
        body: Column(children: [MiWidget(), MiWidget(), MiWidget()]),

        // MENÚ INFERIOR
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuración',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.cyanAccent,
        ),
      ),
    );
  }
}
