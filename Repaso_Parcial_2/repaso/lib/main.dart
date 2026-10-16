//---------------------------------------
// APPBAR
//---------------------------------------

/*
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaEjemplo(),
    );
  }
}

class PantallaEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 1. EL LEADING (Izquierda): Un icono de menú o retroceso
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Se presionó el menú');
          },
        ),

        // 2. EL TITLE (Centro / Zona principal): El texto de la pantalla
        title: Text('Mi Super App'),
        centerTitle: true, // Forzamos a que esté centrado (en iOS suele ser así por defecto, en Android a la izquierda)

        // 3. LAS ACTIONS (Derecha): Una lista de widgets/botones
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Buscando...');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('Abriendo notificaciones');
            },
          ),
          // Incluso puedes poner un avatar o cualquier otro widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Text('U'),
            ),
          ),
        ],
        
        backgroundColor: Colors.indigo, // Dándole un toque de color
      ),
      body: Center(
        child: Text(
          '¡Mira arriba tu AppBar en acción!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
*/

//-------------------------------------------------
// Ejemplo 1 - CLASICO (Con Menú, Título y Acciones)
//-------------------------------------------------

/*
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaConTabs(),
    );
  }
}

// 1. Ocupamos un StatefulWidget porque las pestañas necesitan manejar estados
class PantallaConTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 2. Envolvemos todo en un DefaultTabController para que funcionen las pestañas
    return DefaultTabController(
      length: 3, // Indicamos que son 3 pestañas
      child: Scaffold(
        
        // ==========================================
        // AQUÍ VA NUESTRO APPBAR CON PESTAÑAS
        // ==========================================
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          // 1. Botón a la izquierda (Ej: Menú de hamburguesa)
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          // 2. Título principal
          title: Text('Inicio'),
          centerTitle: false, // Título alineado a la izquierda
          // 3. Acciones a la derecha
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert), // Los tres puntos verticales
              onPressed: () {},
            ),
          ],
        ),

        // ==========================================
        // AQUÍ VA EL BODY (El contenido de cada pestaña)
        // ==========================================
        body: TabBarView(
          children: [
            Center(child: Text('Aquí están tus Chats')),
            Center(child: Text('Aquí están las Novedades')),
            Center(child: Text('Aquí están tus Llamadas')),
          ],
        ),
      ),
    );
  }
}
*/

//---------------------------------------
// Ejemplo - Pestañas (TabBar)
//---------------------------------------

/*
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaConTabs(),
    );
  }
}

// 1. Ocupamos un StatefulWidget porque las pestañas necesitan manejar estados
class PantallaConTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 2. Envolvemos todo en un DefaultTabController para que funcionen las pestañas
    return DefaultTabController(
      length: 3, // Indicamos que son 3 pestañas
      child: Scaffold(
        // ==========================================
        // AQUÍ VA NUESTRO APPBAR CON PESTAÑAS
        // ==========================================
        // Nota: Normalmente va envuelto en un DefaultTabController
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Mi Comunidad'),
          actions: [
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
          // Fila extra en la parte inferior del AppBar
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat), text: "Chats"),
              Tab(icon: Icon(Icons.circle_notifications), text: "Novedades"),
              Tab(icon: Icon(Icons.call), text: "Llamadas"),
            ],
          ),
        ),

        // ==========================================
        // AQUÍ VA EL BODY (El contenido de cada pestaña)
        // ==========================================
        body: TabBarView(
          children: [
            Center(child: Text('Aquí están tus Chats')),
            Center(child: Text('Aquí están las Novedades')),
            Center(child: Text('Aquí están tus Llamadas')),
          ],
        ),
      ),
    );
  }
}
*/

//---------------------------------------
// Ejemplo - Personalizado / Flotante (Con buscador integrado)
//---------------------------------------
/*
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaConTabs(),
    );
  }
}

// 1. Ocupamos un StatefulWidget porque las pestañas necesitan manejar estados
class PantallaConTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 2. Envolvemos todo en un DefaultTabController para que funcionen las pestañas
    return DefaultTabController(
      length: 3, // Indicamos que son 3 pestañas
      child: Scaffold(
        // ==========================================
        // AQUÍ VA NUESTRO APPBAR CON PESTAÑAS
        // ==========================================
        // Nota: Normalmente va envuelto en un DefaultTabController
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2, // Una sombra suave
          // Reemplazamos el título de texto tradicional por una barra de búsqueda
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar productos, marcas...',
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black87),
              onPressed: () {},
            ),
          ],
        ),

        // ==========================================
        // AQUÍ VA EL BODY (El contenido de cada pestaña)
        // ==========================================
        body: TabBarView(
          children: [
            Center(child: Text('Aquí están tus Chats')),
            Center(child: Text('Aquí están las Novedades')),
            Center(child: Text('Aquí están tus Llamadas')),
          ],
        ),
      ),
    );
  }
}
*/

//---------------------------------------
// BODY
//---------------------------------------

// EJEMPLO 1: Column

/*
import 'package:flutter/material.dart';

// Función principal que arranca la aplicación
void main() => runApp(MiAplicacionCompleta());

class MiAplicacionCompleta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repaso Flutter',
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // EL SCAFFOLD ES EL ESQUELETO PRINCIPAL DE LA PANTALLA
    return Scaffold(
      
      // ==========================================
      // 1. EL APPBAR PRINCIPAL
      // ==========================================
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            print('Menú presionado');
          },
        ),
        title: Text(
          'Mi App Completa', 
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      // ==========================================
      // 2. EL BODY 
      // ==========================================
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Los centra verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // Los centra horizontalmente
          children: [
            Icon(Icons.star, size: 50, color: Colors.amber),
            SizedBox(height: 16), // Un pequeño espacio de separación
            Text(
              '¡Bienvenido!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: Text('Presióname'),
            ),
          ],
        ),

      // ==========================================
      // 3. EL BOTTOM NAVIGATION BAR (Barra Inferior)
      // ==========================================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
      
    );
  }
}
*/

// EJEMPLO 2: Row

import 'package:flutter/material.dart';

// Función principal que arranca la aplicación
void main() => runApp(MiAplicacionCompleta());

class MiAplicacionCompleta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repaso Flutter',
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // EL SCAFFOLD ES EL ESQUELETO PRINCIPAL DE LA PANTALLA
    return Scaffold(
      
      // ==========================================
      // 1. EL APPBAR PRINCIPAL
      // ==========================================
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            print('Menú presionado');
          },
        ),
        title: Text(
          'Mi App Completa', 
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      // ==========================================
      // 2. EL BODY 
      // ==========================================
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Los distribuye equitativamente en horizontal
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.phone, color: Colors.green),
              Text('Llamar'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.email, color: Colors.blue),
              Text('Correo'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.share, color: Colors.orange),
              Text('Compartir'),
            ],
          ),
        ],
      ), 

      // ==========================================
      // 3. EL BOTTOM NAVIGATION BAR (Barra Inferior)
      // ==========================================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
      
    ); 
  }
}