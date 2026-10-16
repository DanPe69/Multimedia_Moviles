import 'package:flutter/material.dart';
import './widgets/category_tile.dart';
import './widgets/station_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    String imgPrueba = "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg";

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              // 1. Botones superiores
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Text("D", style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Todas"),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Música"),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Podcasts"),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // 2. Filas de categorías (Cuadrícula 2x4)
              Row(
                children: [
                  Expanded(child: CategoryTile(title: "Español", urlIMG: imgPrueba)),
                  const SizedBox(width: 8),
                  Expanded(child: CategoryTile(title: "Electronic", urlIMG: imgPrueba)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(child: CategoryTile(title: "Ingles", urlIMG: imgPrueba)),
                  const SizedBox(width: 8),
                  Expanded(child: CategoryTile(title: "Japon", urlIMG: imgPrueba)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(child: CategoryTile(title: "Michael Jackson", urlIMG: imgPrueba)),
                  const SizedBox(width: 8),
                  Expanded(child: CategoryTile(title: "English Old", urlIMG: imgPrueba)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(child: CategoryTile(title: "This Is Michael Jackson", urlIMG: imgPrueba)),
                  const SizedBox(width: 8),
                  Expanded(child: CategoryTile(title: "Küss Den Frosch", urlIMG: imgPrueba)),
                ],
              ),

              const SizedBox(height: 20),

              // 3. Título de sección
              const Text(
                "Estaciones recomendadas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // 4. Lista horizontal de tarjetas
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    StationCard(
                      title: "Dvicio",
                      subtitle: "Rozalén, Dvicio...",
                      urlIMG: imgPrueba,
                    ),
                    StationCard(
                      title: "Rocío Dúrcal",
                      subtitle: "Rocío, Roberto...",
                      urlIMG: imgPrueba,
                    ),
                    StationCard(
                      title: "Ana Gabriel",
                      subtitle: "Ana Gabriel Mix...",
                      urlIMG: imgPrueba,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // 5. Barra inferior de navegación
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Buscar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: "Tu biblioteca",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium),
              label: "Premium",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Crear",
            ),
          ],
        ),
      ),
    );
  }
}