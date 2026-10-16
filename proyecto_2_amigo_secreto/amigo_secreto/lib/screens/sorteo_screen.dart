import 'package:flutter/material.dart';

class SorteoScreen extends StatelessWidget {
  final int cantidad;
  final VoidCallback onSortear;

  const SorteoScreen({
    super.key,
    required this.cantidad,
    required this.onSortear,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.card_giftcard,
              size: 120,
              color: Colors.purple,
            ),
            const SizedBox(height: 20),
            Text(
              'Participantes listos: $cantidad',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Asegúrate de haber agregado a todos tus amigos antes de realizar el sorteo.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              ),
              onPressed: onSortear,
              child: const Text(
                '¡Realizar Sorteo!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}