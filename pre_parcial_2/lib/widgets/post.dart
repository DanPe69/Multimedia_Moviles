import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  // Parámetros que recibe el widget
  final String User;
  final String urlIMG;

  const Post({
    super.key,
    required this.User,
    required this.urlIMG,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nombre del usuario
            Text(
              User,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),

            // Imagen del post recortada con bordes redondeados
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                urlIMG,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}