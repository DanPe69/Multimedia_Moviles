import 'package:flutter/material.dart';
import './widgets/card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F6FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF4A2E80),
          foregroundColor: Colors.white,
          elevation: 2,
        ),
      ),
      home: Scaffold(
        // BARRA SUPERIOR
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
          ),
          title: const Text(
            "Feed",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo_outlined),
            ),
          ],
        ),

        // CONTENIDO PRINCIPAL
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          children: [
            // SECCIÓN DE PERFIL / CABECERA
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFF8A6FE8),
                    child: Text(
                      "Y",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '¡Hola de nuevo!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D2B30),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Explora las novedades',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // LISTA DE POSTS
            const Post(
              user: "Finn",
              urlIMG:
                  "https://static.wikia.nocookie.net/horadeaventura/images/f/f3/Original_Finn.png/revision/latest/scale-to-width/360?cb=20130212000456&path-prefix=es",
            ),
            const Post(
              user: "Jake",
              urlIMG:
                  "https://static.wikia.nocookie.net/horadeaventura/images/f/fb/JakeRJS.png/revision/latest/scale-to-width-down/1200?cb=20140526012014&path-prefix=es",
            ),
            const Post(
              user: "BMO",
              urlIMG:
                  "https://static.wikia.nocookie.net/horadeaventura/images/1/1b/BMOGAME.png/revision/latest/scale-to-width/360?cb=20150710131037&path-prefix=es",
            ),
          ],
        ),

        // MENÚ INFERIOR
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF4A2E80),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Nuevo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: 'Notificaciones',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}