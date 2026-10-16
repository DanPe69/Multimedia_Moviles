import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi segunda App'),
        ),
        // SingleChildScrollView evita que se desborde si la pantalla es muy pequeña
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Imagen principal (Galleta / Gato)
              Center(
                child: Image.asset(
                  'assets/image/image.png', // O Image.network(...)
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),

              // 2. Fila con Textos, Íconos y Botón en horizontal
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello World',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Hello World'),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.access_time_rounded, size: 20),
                      SizedBox(width: 4),
                      Icon(Icons.accessibility_new_rounded, size: 20),
                      SizedBox(width: 4),
                      Icon(Icons.ac_unit, size: 20),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ads_click),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // 3. Párrafo de texto (Lorem Ipsum)
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),

              // 4. Fila inferior con las 3 imágenes lado a lado
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                        'https://www.santevet.es/wp-content/uploads/2024/02/gatocomuneuropeo-97.jpg',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                        'https://www.santevet.es/wp-content/uploads/2024/02/gatocomuneuropeo-97.jpg',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                        'https://www.santevet.es/wp-content/uploads/2024/02/gatocomuneuropeo-97.jpg',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}