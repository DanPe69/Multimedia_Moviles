import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text("usuario"),
        ),

        Container(
          height: 300,
          width: double.infinity,
          color: Colors.grey,
          child: const Center(
            child: Icon(
              Icons.image,
              size: 80,
            ),
          ),
        ),

        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_outlined),
            ),
          ],
        ),

        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Esta es una publicación de ejemplo.",
          ),
        ),
      ],
    );
  }
}