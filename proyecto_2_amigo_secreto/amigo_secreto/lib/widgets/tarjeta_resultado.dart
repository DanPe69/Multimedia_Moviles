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
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: const CircleAvatar(
          backgroundColor: Colors.purple,
          child: Icon(Icons.card_giftcard, color: Colors.white),
        ),
        title: Text(
          participante,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          'Le regala a: $amigo',
          style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
        ),
      ),
    );
  }
}