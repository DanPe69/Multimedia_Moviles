import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final String urlIMG;

  const CategoryTile({
    super.key,
    required this.title,
    required this.urlIMG,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      child: Row(
        children: [
          Image.network(
            urlIMG,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}