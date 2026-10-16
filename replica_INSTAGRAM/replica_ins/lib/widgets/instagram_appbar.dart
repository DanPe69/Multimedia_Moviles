import 'package:flutter/material.dart';

class InstagramAppBar extends StatelessWidget {
  const InstagramAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Instagram",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send_outlined),
        ),
      ],
    );
  }
}