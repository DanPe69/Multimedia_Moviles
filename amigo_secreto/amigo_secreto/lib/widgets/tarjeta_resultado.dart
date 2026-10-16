import 'package:flutter/material.dart';

class TarjetaResultado extends StatelessWidget {
  final String participante;
  final String amigo;

  const TarjetaResultado({
    super.key,
    required this.participante,
    required this.amigo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 54, 27, 88),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 98, 25),
                Color.fromARGB(255, 233, 179, 32),
              ],
            ),
          ),
          child: Icon(
            Icons.card_giftcard,
            color: const Color.fromARGB(255, 54, 27, 88),
          ),
        ),
        title: Text(
          participante,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color.fromARGB(255, 226, 226, 226),
          ),
        ),
        subtitle: Text(
          'Le regala a: $amigo',
          style: TextStyle(
            color: const Color.fromARGB(255, 160, 160, 160),
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
