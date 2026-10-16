import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String user;
  final String urlIMG;

  const Post({
    super.key,
    required this.urlIMG,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ENCABEZADO DEL POST (USUARIO)
          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color(0xFFE8E0F5),
              child: Text(
                user.isNotEmpty ? user[0].toUpperCase() : '?',
                style: const TextStyle(
                  color: Color(0xFF4A2E80),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              user,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert_rounded, color: Colors.grey),
              onPressed: () {},
            ),
          ),

          // IMAGEN DEL POST
          ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Image.network(
              urlIMG,
              width: double.infinity,
              height: 250,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 180,
                  color: Colors.grey[200],
                  child: const Center(
                    child: Icon(Icons.broken_image, color: Colors.grey),
                  ),
                );
              },
            ),
          ),

          // BARRA DE ACCIONES Y DETALLES
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded, color: Color(0xFF4A2E80)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline_rounded, color: Color(0xFF4A2E80)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined, color: Color(0xFF4A2E80)),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border_rounded, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}