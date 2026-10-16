import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        ),
        const SizedBox(width: 15),
        const CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        ),
        const SizedBox(width: 15),
        const CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        ),
      ],
    );
  }
}