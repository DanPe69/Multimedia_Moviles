import 'package:flutter/material.dart';

class StationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String urlIMG;

  const StationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.urlIMG,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            urlIMG,
            width: 140,
            height: 140,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}