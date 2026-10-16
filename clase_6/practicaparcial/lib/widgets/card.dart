import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.ac_unit),
        Column(
          children: [
            Text("Example"),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.nat_outlined), Text("Text")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.nat_outlined), Text("Text")
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}







