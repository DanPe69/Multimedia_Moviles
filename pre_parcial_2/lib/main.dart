import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi segunda APP'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. Imagen circular superior (Galleta)
              ClipOval(
                child: Image.network(
                  'https://picsum.photos/300', // Reemplaza por la URL de tu galleta
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),

              // 2. Textos e Iconos
              const Text(
                'Hello World',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('Hello World'),
              const SizedBox(height: 8),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.face_outlined),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_upward),
                  SizedBox(width: 8),
                  Icon(Icons.ac_unit),
                ],
              ),
              const SizedBox(height: 8),
              const Icon(Icons.search),
              const SizedBox(height: 16),

              // 3. Párrafo de texto (Lorem Ipsum)
              const Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit mi, mus potenti ut nostra enim per maecenas netus himenaeos, fames phasellus eros accumsan pharetra libero hendrerit.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.black87),
              ),
              const SizedBox(height: 20),

              // 4. Fila con tres imágenes inferiores (Búhos)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://picsum.photos/100',
                    width: 80,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/100',
                    width: 80,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/100',
                    width: 80,
                    height: 100,
                    fit: BoxFit.cover,
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
